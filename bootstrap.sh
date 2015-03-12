#!/bin/sh
# generate fresh configure and Makefile.ins
# only developers might need to run this script

run() {
	sh -e -x -c "$@"
}

run aclocal

# we need to run this manually because it does not create ltmain.sh when
# called from automake for some unknown reason (is it called at all?)
if grep -q ^AC_PROG_LIBTOOL configure.in
then
	if egrep -q '^[[:space:]]*AC_LIBLTDL_' configure.in
	then
		extras="--ltdl"
	else
		extras=""
	fi

	run "libtoolize --automake --force --copy $extras"

	if egrep -q '^[[:space:]]*AC_LIBLTDL_' configure.in
	then
		echo "Adjusting libltdl/*"

		# do not bundle with the huge license text
		rm -fv libltdl/COPYING.LIB
		m=libltdl/Makefile.in
		sed 's/COPYING.LIB/ /g' $m > $m.new;
		chmod u+w $m
		mv $m.new $m
		chmod u-w $m
	fi

	if test -f libtool.m4 -o -f cfgaux/libtool.m4
	then
		echo "Warning: libtoolize 1.x does not update libtool.m4."
		echo ""
	fi
fi

run autoconf

if grep -q ^AC_CONFIG_HEADER configure.in
then
	run "autoheader --warnings=all"
else
	echo "assuming there is no config.h file"
fi

if grep -q ^AM_INIT_AUTOMAKE configure.in
then
	run "automake --foreign --add-missing --copy --force-missing --no-force --warnings all"
else
	echo "assuming there are no Makefile.am files"
fi

echo "done."

EXTRA_DIST = \
	adapter_gzip.cc

lib_LTLIBRARIES = \
	ecap_adapter_gzip.la

noinst_HEADERS = \
	sample.h \
	\
	autoconf.h 

# gzip
ecap_adapter_gzip_la_SOURCES = adapter_gzip.cc
ecap_adapter_gzip_la_LDFLAGS = -module -avoid-version
ecap_adapter_gzip_la_LIBADD = -lecap -lz

# -shared -export-dynamic -Wl,-soname,ecap_noop_adapter.so

DISTCLEANFILES = \
        autoconf.h

AM_CPPFLAGS = -I$(top_srcdir)/src


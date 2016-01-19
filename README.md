# SQUID eCAP GZIP Adapter

This is an [eCAP](http://www.e-cap.org/Home) adapter for [HTTP compression](https://en.wikipedia.org/wiki/HTTP_compression) with [GZIP](https://en.wikipedia.org/wiki/Gzip).

The adapter is installed in `/usr/local/lib/` by default.

The libecap library is required to build and use these adapters. You can get
the library from http://www.e-cap.org/. The adapter can be built and
installed from source, usually by running:

```bash
./configure
make
make install
```

For eCAP documentation, the libecap library implementation, and support
information, please visit the eCAP project web site: http://www.e-cap.org/

## Contribution Process

This project uses the [C4.1 process](http://rfc.zeromq.org/spec:22) for all code changes.

> "Everyone, without distinction or discrimination, SHALL have an equal right to become a Contributor under the
terms of this contract."

### tl;dr

1. Check for [open issues](https://github.com/c-rack/squid-ecap-gzip/issues) or [open a new issue](https://github.com/c-rack/squid-ecap-gzip/issues/new) to start a discussion around a feature idea or a bug
2. Fork the [squid-ecap-gzip repository on GitHub](https://github.com/c-rack/squid-ecap-gzip) to start making your changes
3. Write a test which shows that the bug was fixed or that the feature works as expected
4. Send a pull request
5. Your pull request is merged and you are added to the [list of contributors](https://github.com/c-rack/squid-ecap-gzip/graphs/contributors)


## License

Copyright (C) 2008-2016 Constantin Rack

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


### Credits

This product includes software developed by [The Measurement Factory](http://www.measurement-factory.com/).

This product includes AX_CXX_CHECK_LIB software developed by Guiodo Draheim <guidod@gmx.de>

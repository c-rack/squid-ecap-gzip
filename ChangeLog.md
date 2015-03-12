# Change Log #

## 1.3.0 (2011-02-13) ##
[squid-ecap-gzip-1.3.0.tar.gz](http://squid-ecap-gzip.googlecode.com/files/squid-ecap-gzip-1.3.0.tar.gz)

  * FIX: Fixes [issue #3](https://code.google.com/p/squid-ecap-gzip/issues/detail?id=#3) (Squid does not cache modified content). Thanks Jonathan!

## 1.2.0 (2010-02-21) ##
[squid-ecap-gzip-1.2.0.tar.gz](http://squid-ecap-gzip.googlecode.com/files/squid-ecap-gzip-1.2.0.tar.gz)

  * FIX: Do not call libecap::adapter::Service::start() to avoid assertion error.

## 1.1.0 (2009-07-04) ##
[vigos-ecap-gzip-adapter-1.1.0.tar.gz](http://squid-ecap-gzip.googlecode.com/files/vigos-ecap-gzip-adapter-1.1.0.tar.gz)

  * FIX: Do not compress if response has a Content-Encoding header.
  * FIX: Do not compress if response has a Content-Range header.
  * FIX: Respect "Cache-Control: no-transform" header
  * FIX: Add warning header according to RFC 2616
  * FIX: Remove ETag header on compressed response
  * FIX: Remove Content-Location header on compressed response

## 1.0.0 (2008-12-30) ##
[vigos-ecap-gzip-adapter-1.0.0.tar.gz](http://squid-ecap-gzip.googlecode.com/files/vigos-ecap-gzip-adapter-1.0.0.tar.gz)

  * First public release.
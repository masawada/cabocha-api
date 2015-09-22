CaboCha API Example
===================

# How to Deploy
```
$ dokku apps:create cabocha-api
$ dokku config:set cabocha-api BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
$ dokku config:set cabocha-api LD_LIBRARY_PATH=/app/.linuxbrew/lib
$ dokku config:set cabocha-api CPLUS_INCLUDE_PATH=/app/.linuxbrew/include
$ dokku config:set cabocha-api PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/app/.linuxbrew/bin
$ git remote add dokku dokku@dokku-fqdn:cabocha-api
$ git push dokku master
```

geohash-int
======

A fast C99 [GeoHash](http://en.wikipedia.org/wiki/Geohash) library which only provide int64 hash result. You can use it to build a spatial index service with redis, like [Ardb](https://github.com/yinqiwen/ardb) already done.   

## Embedding geohash-int

Include geohash-int as a submodule into your 'deps' folder for example:

    $ git submodule add https://github.com/yinqiwen/geohash-int.git deps/geohash-int



To update your geohash-int submodule:

    $ cd geohash-int && git pull origin master 

    $ cd ../ && git add geohash-int && git commit -m 'Updated geohash-int'

    OR

    In a directory above the submodule:

    $ git submodule foreach git pull origin master

    $ git add geohash-int && git commit -m 'Updated geohash-int'

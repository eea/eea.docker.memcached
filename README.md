## Memcached Docker image

Docker images for memcached.

This image is generic, thus you can obviously re-use it within
your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - `:latest` [*Dockerfile*](https://github.com/eea/eea.docker.memcached/blob/master/Dockerfile) (default)
  - `:1.4` [*Dockerfile*](https://github.com/eea/eea.docker.memcached/blob/1.4/Dockerfile)

### Changes

 - [CHANGELOG.md](https://github.com/eea/eea.docker.memcached/blob/master/CHANGELOG.md)

### Base docker image

 - [hub.docker.com](https://registry.hub.docker.com/u/eeacms/memcached)


### Source code

  - [github.com](http://github.com/eea/eea.docker.memcached
)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Install [Docker Compose](https://docs.docker.com/compose/).


### Usage

    $ git clone https://github.com/eea/eea.docker.memcached.git
    $ cd eea.docker.memcached
    $ docker-compose up -d
    $ docker-compose logs

or (without docker-compose)

    $ docker run -d -e MEMCACHED_MEMORY=2048 eeacms/memcached


## Supported environment variables ##

* `MEMCACHED_MEMORY` Max memory to use for items in megabytes (default: 64 MB)
* `MEMCACHED_TCP_PORT` TCP port number to listen on (default: 11211)
* `MEMCACHED_THREADS` Number of threads to use (default: 4)
* `MEMCACHED_CONNECTIONS` Max simultaneous connections (default: 1024)
* `MEMCACHED_FACTOR` Chunk size growth factor (default: 1.25)
* `MEMCACHED_DAEMON` Run as a demon
* `MEMCACHED_UDP_PORT` UDP port number to listen on (default: 0)
* `MEMCACHED_SOCKET_MASK` Access mask for UNIX socket, in octal (default: 0700)
* `MEMCACHED_INTERFACE` Interface to listen on (default: INADDR_ANY, all addresses)
* `MEMCACHED_MEMORY_EXHAUSTED` Return error on memory exhausted (rather than removing items)
* `MEMCACHED_LOCK_PAGED_MEMORY` Lock down all paged memory
* `MEMCACHED_VERBOSE` Verbose (print errors/warnings while in event loop)
* `MEMCACHED_PID_FILE` Save PID in <file>, only used with -d option
* `MEMCACHED_KEY_VALUE_FLAGS_SPACE` Minimum space allocated for key+value+flags (default: 48)
* `MEMCACHED_LARGE_MEMORY_PAGES` Try to use large memory pages (if available)
* `MEMCACHED_DELIMITER` The delimiter between key prefixes and IDs.
* `MEMCACHED_MAX_REQUESTS_PER_EVENT` Maximum number of requests per event
* `MEMCACHED_DISABLE_CAS` Disable use of CAS
* `MEMCACHED_BACKLOG_QUEUE_LIMIT` Set the backlog queue limit (default: 1024)
* `MEMCACHED_BIND_PROTOCOL` Binding protocol - one of ascii, binary, or auto (default)
* `MEMCACHED_SLAB_PAGE_SIZE` Override the size of each slab page. Adjusts max item size (default: 1mb, min: 1k, max: 128m)


## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.


## Funding

[European Environment Agency (EU)](http://eea.europa.eu)

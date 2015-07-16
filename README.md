## Memcached Docker image

Docker images for memcached.

These images are generic, thus you can obviously re-use them within
your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - `:latest` (default)
  - `:1.4`


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


## Supported environment variables ##

### memcached.env ###

* `MEMCACHED_MEMORY`
* `MEMCACHED_TCP_PORT`
* `MEMCACHED_THREADS`
* `MEMCACHED_CONNECTIONS`
* `MEMCACHED_FACTOR`
* `MEMCACHED_DAEMON`
* `MEMCACHED_UDP_PORT`
* `MEMCACHED_SOCKET_MASK`
* `MEMCACHED_INTERFACE`
* `MEMCACHED_MEMORY_EXHAUSTED`
* `MEMCACHED_LOCK_PAGED_MEMORY`
* `MEMCACHED_VERBOSE`
* `MEMCACHED_PID_FILE`
* `MEMCACHED_KEY_VALUE_FLAGS_SPACE`
* `MEMCACHED_LARGE_MEMORY_PAGES`
* `MEMCACHED_DELIMITER`
* `MEMCACHED_MAX_REQUESTS_PER_EVENT`
* `MEMCACHED_DISABLE_CAS`
* `MEMCACHED_BACKLOG_QUEUE_LIMIT`
* `MEMCACHED_BIND_PROTOCOL`
* `MEMCACHED_SLAB_PAGE_SIZE`
* `MEMCACHED_SASL`


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

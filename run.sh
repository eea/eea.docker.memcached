#!/bin/bash
set -x

PARAMS=""

# TCP port number to listen on (default: 11211)
if [ ! -z "$MEMCACHED_TCP_PORT" ]; then
  PARAMS="$PARAMS -p $MEMCACHED_TCP_PORT"
fi

# UDP port number to listen on (default: 0)
if [ ! -z "$MEMCACHED_UDP_PORT" ]; then
  PARAMS="$PARAMS -U $MEMCACHED_UDP_PORT"
fi

# access mask for UNIX socket, in octal (default: 0700)
if [ ! -z "$MEMCACHED_SOCKET_MASK" ]; then
  PARAMS="$PARAMS -a $MEMCACHED_SOCKET_MASK"
fi

# interface to listen on (default: INADDR_ANY, all addresses)
if [ ! -z "$MEMCACHED_INTERFACE" ]; then
  PARAMS="$PARAMS -l $MEMCACHED_INTERFACE"
fi

# Max memory to use for items in megabytes (default: 64 MB)
if [ ! -z "$MEMCACHED_MEMORY" ]; then
  PARAMS="$PARAMS -m $MEMCACHED_MEMORY"
fi

# return error on memory exhausted (rather than removing items)
if [ ! -z "$MEMCACHED_MEMORY_EXHAUSTED" ]; then
  PARAMS="$PARAMS -M"
fi

# max simultaneous connections (default: 1024)
if [ ! -z "$MEMCACHED_CONNECTIONS" ]; then
  PARAMS="$PARAMS -c $MEMCACHED_CONNECTIONS"
fi

# lock down all paged memory
if [ ! -z "$MEMCACHED_LOCK_PAGED_MEMORY" ]; then
  PARAMS="$PARAMS -k"
fi

# verbose (print errors/warnings while in event loop)
if [ ! -z "$MEMCACHED_VERBOSE" ]; then
  PARAMS="$PARAMS -v"
fi

# save PID in <file>, only used with -d option
if [ ! -z "$MEMCACHED_PID_FILE" ]; then
  PARAMS="$PARAMS -P $MEMCACHED_PID_FILE"
fi

# number of threads to use (default: 4)
if [ ! -z "$MEMCACHED_THREADS" ]; then
  PARAMS="$PARAMS -t $MEMCACHED_THREADS"
fi

# chunk size growth factor (default: 1.25)
if [ ! -z "$MEMCACHED_FACTOR" ]; then
  PARAMS="$PARAMS -f $MEMCACHED_FACTOR"
fi

# minimum space allocated for key+value+flags (default: 48)
if [ ! -z "$MEMCACHED_KEY_VALUE_FLAGS_SPACE" ]; then
  PARAMS="$PARAMS -n $MEMCACHED_KEY_VALUE_FLAGS_SPACE"
fi

# Try to use large memory pages (if available)
if [ ! -z "$MEMCACHED_LARGE_MEMORY_PAGES" ]; then
  PARAMS="$PARAMS -L"
fi

# the delimiter between key prefixes and IDs.
if [ ! -z "$MEMCACHED_DELIMITER" ]; then
  PARAMS="$PARAMS -D $MEMCACHED_DELIMITER"
fi

# Maximum number of requests per event
if [ ! -z "$MEMCACHED_MAX_REQUESTS_PER_EVENT" ]; then
  PARAMS="$PARAMS -R $MEMCACHED_MAX_REQUESTS_PER_EVENT"
fi

# Disable use of CAS
if [ ! -z "$MEMCACHED_DISABLE_CAS" ]; then
  PARAMS="$PARAMS -C"
fi

# Set the backlog queue limit (default: 1024)
if [ ! -z "$MEMCACHED_BACKLOG_QUEUE_LIMIT" ]; then
  PARAMS="$PARAMS -b $MEMCACHED_BACKLOG_QUEUE_LIMIT"
fi

# Binding protocol - one of ascii, binary, or auto (default)
if [ ! -z "$MEMCACHED_BIND_PROTOCOL" ]; then
  PARAMS="$PARAMS -B $MEMCACHED_BIND_PROTOCOL"
fi

# Override the size of each slab page. Adjusts max item size (default: 1mb, min: 1k, max: 128m)
if [ ! -z "$MEMCACHED_SLAB_PAGE_SIZE" ]; then
  PARAMS="$PARAMS -I $MEMCACHED_SLAB_PAGE_SIZE"
fi

# run as a demon
if [ ! -z "$MEMCACHED_DAEMON" ]; then
  PARAMS="$PARAMS -d"
fi

/usr/local/bin/memcached $PARAMS


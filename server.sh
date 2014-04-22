#!/bin/bash

start_server() {
  { echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.html)\r\n\r\n"; cat index.html; } | nc -l -p 8080 -i 1 &
  server_process_pid=$!
  echo "starting server"
}



while true; do
  #check if pid does not exists
  if [ -z $server_process_pid ]; then
    start_server
    continue
  fi

  #PID always exists from this point

  #check if process is not running
  if (! kill -s 0 $server_process_pid); then
    start_server
  fi

  echo $server_process_pid
  sleep 1
done

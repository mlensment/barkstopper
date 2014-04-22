#!/bin/bash

bla() {
  echo $1
}

serve_static() {
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.html)\r\n\r\n"; cat index.html;
}

start_server() {
  # (nc -l -p 9000 -i 1 < ncloop | (read METHOD URI PROTOCOL ; echo "path: $URI") > ncloop) &

  (nc -l -p 9000 -i 1 <(read METHOD URI PROTOCOL ; echo "path: $URI")) &


  #serve_static | nc -l -p 9000 -i 1 | (read METHOD URI PROTOCOL ; bla "$URI") &
  server_process_pid=$!
  echo "starting server"
}

mkfifo ncloop

while true; do
  echo "things"
  echo $server_process_pid
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


  sleep 1
done

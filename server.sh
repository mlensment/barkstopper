#!/bin/bash

handle_request() {
  echo $1
}

serve_static() {
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.html)\r\n\r\n"; cat index.html;
}

start_server() {
  # (nc -l -p 9000 -i 1 < ncloop | (read METHOD URI PROTOCOL ; echo $URI) > ncloop) & #does not work on my debian
  # (nc -l -p 9000 -i 1 < <(read METHOD URI PROTOCOL ; echo "path: $URI")) & #does not work at all

  # bit hackish way to pipe incoming request to handle_request method,
  # but named pipe did not work on my slow debian (fifo) and
  # process substitution did not give any results at all
  serve_static | nc -l -p 9000 | (read METHOD URI PROTOCOL; handle_request "$URI") &
  server_process_pid=$!
  echo "starting server"
}

#create fifo for piping network data
if [ ! -f "/tmp/ncloop" ]; then
  mkfifo "/tmp/ncloop"
fi

while true; do
  #echo "things"
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

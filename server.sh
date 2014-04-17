#!/bin/bash

handle_req()
{
        read req file proto
        echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
        echo -e "<html><h1>Hello World</h1></html>"
}

typeset -fx handle_req

nc -l -p 8080 -c handle_req
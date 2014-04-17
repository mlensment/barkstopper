#!/bin/bash

listen_port() {
  nc -k -l 4444
}

listen_port
#!/bin/bash

function show_help() {
  echo "Usage: $0 {start|stop|help}"
  echo "  start: Generate updated artifacts, build Docker image, and run container."
  echo "  stop: Stop the running Docker container."
  echo "  help: Show this help message."
}

function start() {
  # Build the docker image with docker-compose, and run the container
  docker compose build --no-cache && docker compose up -d --force-recreate
}

function stop() {
  docker compose down
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  help)
    show_help
    ;;
  *)
    show_help
    exit 1
    ;;
esac
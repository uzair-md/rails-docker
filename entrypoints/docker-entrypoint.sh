#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

#bundle exec rails s -b 0.0.0.0
bundle exec puma -C ./config/puma.rb
#bundle exec unicorn -C ./config/unicorn.rb

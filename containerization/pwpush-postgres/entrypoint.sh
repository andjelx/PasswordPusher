#!/bin/bash
set -e

export RAILS_SERVE_STATIC_FILES=1
export RAILS_ENV=production

bundle exec rake db:migrate
bundle exec foreman start web

exec "$@"

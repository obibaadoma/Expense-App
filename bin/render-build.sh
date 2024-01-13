#!/usr/bin/env bash
# exit on error
set -o errexit

# Change directory to the location of your script
cd "$(dirname "$0")" || exit

# Ensure execute permissions for the script
chmod +x ./bin/render-build.sh
chmod +x ./bin/rails

# Install bundle if not already installed
if ! command -v bundle &> /dev/null; then
    gem install bundler
fi

# Install dependencies using bundle with deployment option
bundle install --deployment

# Ensure execute permissions for the rails binary
chmod +x ./bin/rails

# Run the necessary commands
./bin/rails assets:precompile
./bin/rails assets:clean
bundle exec rake db:migrate
bundle exec rails db:seed

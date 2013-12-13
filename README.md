# Rails Ember Demo

# Setup

    cp config/database.yml.example config/database.yml
    vi config/database.yml
    bundle install
    rake db:setup
    rake db:migrate RAILS_ENV=test
    guard

    http://localhost:3000

# API docs

    rake docs:generate

    http://localhost:3000/api/docs

# Heroku links

    http://vast-falls-3537.herokuapp.com/

    http://vast-falls-3537.herokuapp.com/api/docs
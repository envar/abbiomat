source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'less-rails'

# Sanitize html
gem 'rails-html-sanitizer'

# Bootstrap
gem 'less-rails-bootstrap'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Rails Authentication
gem 'devise'

# Amazon Ruby SDK for interacting with S3
gem 'aws-sdk', '< 2.0'

# Paperclip is an easy file attachment library
gem 'paperclip', '~> 4.2'

# Support for Markdown formatting
gem 'kramdown'

# Font Awesome
gem 'font-awesome-rails'

# Pagination
gem 'will_paginate', '~> 3.0.6'

# Allows sending an email straight from a form
gem 'mail_form'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Generate UML diagrams for ActiveRecord, Mongoid, Datamapper
  gem 'railroady'

  # Use sqlite as database in development
  gem 'sqlite3'
end

group :production do
  gem 'rails_12factor'

  # Use Postgres as the database for Active Record
  gem 'pg'
end

# Specify ruby version for heroku
ruby "2.2.2"

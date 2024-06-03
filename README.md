# RailsAdmin

[![Gem Version](https://img.shields.io/gem/v/rails_admin.svg)][gem]
[![Code Climate](https://codeclimate.com/github/railsadminteam/rails_admin.svg)][codeclimate]
[gem]: https://rubygems.org/gems/rails_magazzino
[codeclimate]: https://codeclimate.com/github/rails_magazzino/rails_admin
[semver]: https://dependabot.com/compatibility-score.html?dependency-name=rails_magazzino&package-manager=bundler&version-scheme=semver

This is my first Rails app. It is a simple orders stock management system.

## Features

- CRUD any data with ease
- Custom actions
- Automatic form validation
- Filtering and ordering
- Supported ORMs
  - ActiveRecord

## Installation

1. On your gemfile: `gem 'rails_admin', '~> 3.0'`
2. Run `bundle install`
3. Run `rails g rails_magazzino:install`
4. Provide a namespace for the routes when asked
5. Start a server `rails s` and administer your data at [/admin](http://localhost:3000/admin). (if you chose default namespace: /admin)

## Upgrading from 2.x

Due to introduction of Webpack/Webpacker support, some additional dependency and configuration will be needed.
Running `rails g rails_admin:install` will suggest you some required changes, based on current setup of your app.

## Configuration

### Global

In `config/initializers/rails_magazzino.rb`:

## Support

If you think you found a bug in RailsAdmin, you can [submit an issue](https://github.com/ccrisc/rails_magazzino/issues/new).

## Supported Ruby Versions

This library aims to support and is [tested against][ghactions] the following Ruby implementations:

- Ruby 2.6
- Ruby 2.7
- Ruby 3.0
- Ruby 3.1
- Ruby 3.2
- [JRuby][]

[jruby]: http://jruby.org/

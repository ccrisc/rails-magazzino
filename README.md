# rails_magazzino

This is my first Rails app. It is a simple orders stock management system developed in Rails 7 with Importmap.
<img width="1792" alt="Screenshot 2024-07-26 alle 11 09 10" src="https://github.com/user-attachments/assets/1d982f12-06b6-422f-b9d9-a142f29f17d2">

## Features

- CRUD any data with ease
- Custom actions
- Automatic form validation
- Filtering and ordering
- Supported ORMs: ActiveRecord

## Installation
1. Clone Repo
2. Run `bundle install`
3. Start a server `rails s` and administer your data at [localhost](http://localhost:3000/).

## Upgrading from 2.x

Due to introduction of Webpack/Webpacker support, some additional dependency and configuration will be needed.
Running `rails g rails_magazzino:install` will suggest you some required changes, based on current setup of your app.

## Configuration

### Global

In `config/initializers/rails_magazzino.rb`:

## Support

If you think you found a bug in rails_magazzino, you can [submit an issue](https://github.com/ccrisc/rails_magazzino/issues/new).

## Supported Ruby Versions

This library aims to support and is [tested against][ghactions] the following Ruby implementations:

- Ruby 2.6
- Ruby 2.7
- Ruby 3.0
- Ruby 3.1
- Ruby 3.2
- [JRuby][]

[jruby]: http://jruby.org/

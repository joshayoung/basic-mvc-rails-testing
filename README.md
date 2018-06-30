# README

This project includes some basic Ruby on Rails model, controller, and feature tests.

## Initial Setup:
* `rails new basic-mvc-rails-testing -T`

## Add rsepc to your gemfile:
`
group :development, :test do
  gem 'rspec-rails', '~> 3.7'
end
`

* Run `bundle install`

## Setup the spec folder:
`rails generate rspec:install`
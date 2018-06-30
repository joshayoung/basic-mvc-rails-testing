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

## Create Model:
`rails g model books title:string word_count:string description:text`

## Run Migration:
`rails db:migrate`

## Create Model Specs (this may have been setup during the model creation):
`rails g rspec:model book`
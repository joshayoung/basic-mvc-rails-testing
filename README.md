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

## Setup the Spec Folder:
`rails generate rspec:install`

## Create Model:
`rails g model books title:string word_count:string description:text`

## Run Migration:
`rails db:migrate`

## Create Model Specs (this may have been setup during the model creation):
`rails g rspec:model book`

## Create the Controller:
`rails g controller books`

## Create Controller Specs (this may have been setup during the controller creation):
`rails g rspec:controller books`
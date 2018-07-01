require 'faker'

FactoryBot.define do
  factory :book do
    title Faker::Book
    word_count Faker::Number.number(10)
    description Faker::Seinfeld
  end
end
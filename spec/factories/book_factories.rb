require 'faker'

FactoryBot.define do
  factory :book do
    title Faker::Book.title
    word_count Faker::Number.number(10)
    description "A famous novel"
  end
end
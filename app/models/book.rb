class Book < ApplicationRecord
  validates :title, presence: true
  validates :word_count, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
end

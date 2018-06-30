class Book < ApplicationRecord
  validates :title, presence: true
  validates :word_count, presence: true, numericality: { only_integer: true }
  validates :description, presence: true

  class << self
    def antiques
      where(antique: true)
    end
    def recent
      where(antique: false)
    end
  end
end

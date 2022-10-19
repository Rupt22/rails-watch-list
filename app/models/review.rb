class Review < ApplicationRecord
  belongs_to :list

  validates :description, presence: true, length: {minimum: 10}
  validates :rating, presence: true, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 10}

end

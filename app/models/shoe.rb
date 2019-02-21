class Shoe < ApplicationRecord
  belongs_to :department
  has_many :comments
end

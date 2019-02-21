class Department < ApplicationRecord
  has_many :shoes, dependent: :destroy
end

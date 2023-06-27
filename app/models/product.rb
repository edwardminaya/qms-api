class Product < ApplicationRecord
  belongs_to :productclass
  has_many :rootcauses
end

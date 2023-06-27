class Product < ApplicationRecord
  belongs_to :productclass
  belongs_to :rootcause
end

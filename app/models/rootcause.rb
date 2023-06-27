class Rootcause < ApplicationRecord
  has_many :products
  has_many :departments
end

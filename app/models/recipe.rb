class Recipe < ActiveRecord::Base
  has_many :ingredients
  accept_nested_attributes_for :ingredients
end

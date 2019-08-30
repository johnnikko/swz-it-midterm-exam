class Category < ActiveRecord::Base
  has_many :disasters
  validates_presence_of :category_name
end
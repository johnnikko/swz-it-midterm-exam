class Category < ActiveRecord::Base
  has_many :disasters
  validates :category_name, presence: true
  validates :description, presence: true
end
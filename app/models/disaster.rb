class Disaster < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true, length: {minimun:3,maximum:50}
  validates :description, presence: true
end
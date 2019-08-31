class Disaster < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments
  validates :title, presence: true, length: {minimun:3,maximum:50}
  validates :description, presence: true

end
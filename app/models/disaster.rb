class Disaster < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :comments, dependent: :destroy
  before_destroy :ensure_deletable, prepend: true

  validates :title, presence: true, length: {minimun:3,maximum:50}
  validates :description, presence: true

  def ensure_deletable
    raise "You only delete your own information" if users_disaster?
  end

  def users_disaster?
    self.user_id == current_user.id
  end

end
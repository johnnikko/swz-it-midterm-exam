class Comment < ApplicationRecord
   belongs_to :disaster, dependent: :destroy
   belongs_to :user
end
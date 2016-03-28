class Chatroom < ActiveRecord::Base
  has_many :texts
  belongs_to :user
end

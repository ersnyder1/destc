class Message < ActiveRecord::Base

belongs_to :user
#validates :sender_userid, :presence => true
end

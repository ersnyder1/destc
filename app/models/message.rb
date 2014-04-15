class Message < ActiveRecord::Base

belongs_to :user


validates :user_id, :presence => true
validates :receiver_userid, :presence => true
validates :message, :presence => true
end

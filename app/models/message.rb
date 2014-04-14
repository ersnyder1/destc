class Message < ActiveRecord::Base

belongs_to :user

def convo_name                                                                                                                                                                                    
  ([user.find_by(id: receiver_userid).full_name,"and",user.full_name] - ['']).compact.join(' ')                         
end




#validates :sender_userid, :presence => true
end

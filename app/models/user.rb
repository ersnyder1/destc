class User < ActiveRecord::Base

has_many :messages


def full_name                                                                                                                                                                                     
  ([firstname, lastname] - ['']).compact.join(' ')                         
end

validates :firstname, :presence => true
validates :lastname, :presence => true


end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :messages


def full_name                                                                                                                                                                                     
  ([firstname, lastname] - ['']).compact.join(' ')                         
end

validates :email, :presence => true
validates :lastname, :presence => true
validates :firstname, :presence => true

end

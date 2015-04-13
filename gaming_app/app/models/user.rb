class User < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :games_1, class_name: "Game", foreign_key:"user1_id"
  has_many :games_2, class_name: "Game", foreign_key:"user2_id"
  has_many :moves
end








#class User < ActiveRecord::Base
#  # Include default devise modules. Others available are:
#  # :confirmable, :lockable, :timeoutable and :omniauthable
#  devise :database_authenticatable, :registerable,
#         :recoverable, :rememberable, :trackable, :validatable
#
#  has_many :games_1, class_name: "Game", foreign_key:"user1_id"
#  has_many :games_2, class_name: "Game", foreign_key:"user2_id"
#  has_many :moves
#end
#



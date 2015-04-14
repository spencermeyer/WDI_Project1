class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # validates :name, uniqueness: true
  has_many :games_1, class_name: 'Game', foreign_key: 'user_id'
  has_many :games_2, class_name: 'Game', foreign_key: 'opponent_id'
  has_many :moves, through: :games

  def all_games
    games_1 + games_2
  end
end

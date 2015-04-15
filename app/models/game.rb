class Game < ActiveRecord::Base
  validates :diff, inclusion: { in: %w(1 2 3 4 5), message: "1-5" }
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :user, class_name: 'User', foreign_key: 'opponent_id'
  has_many :moves


  def whosmove
    Move.last.try(:value)

  end



end

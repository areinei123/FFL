class League <ActiveRecord::Base
  has_many :users

  validates :league_name, presence: true, length: {maximum: 50}
  validates :number_players, presence: true, numericality: true
end
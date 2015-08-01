class League <ActiveRecord::Base
  has_many :teams
  had_many :users, through: :teams

  validates :league_name, presence: true, length: {maximum: 50}
  validates :number_players, presence: true, numericality: true
end
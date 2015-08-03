class Team < ActiveRecord::Base
  belongs to :league
  belongs to :user
end

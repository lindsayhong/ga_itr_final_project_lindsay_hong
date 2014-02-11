class Players < ActiveRecord::Base
  attr_accessible :player_first_name, :player_handicap, :player_last_name
end

class Hole < ActiveRecord::Base
  # attr_accessible :chips, :fairway, :green, :hole_number, :over_under, :putts, :score

  belongs_to :round_user
  # validates :hole_number, :fairway, :green, :chips, :putts, :score, :over_under, presence: true

end

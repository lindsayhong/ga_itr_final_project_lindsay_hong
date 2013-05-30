class Hole < ActiveRecord::Base
  # attr_accessible :chips, :fairway, :green, :hole_number, :over_under, :putts, :score

  belongs_to :round_user
  
  # validates :hole_number, :presence => true
  # validates :fairway, :presence => true

  # # :fairway, :green, :chips, :sand, :putts, :score, :over_under, :presence => true

  after_save :update_stats

  private

  def update_stats
  	
  end

end

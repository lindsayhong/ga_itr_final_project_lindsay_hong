class Round < ActiveRecord::Base
  # attr_accessible :course_name, :play_date, :tee_time
  has_many :round_users
  has_many :users, through: :round_users

  validates :play_date, :tee_time, :course_name, :presence => true
end

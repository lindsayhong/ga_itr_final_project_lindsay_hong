class RoundUser < ActiveRecord::Base
  # attr_accessible :round_id, :user_id
  belongs_to :user
  belongs_to :round
  has_many :holes
end

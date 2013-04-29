class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :handicap, :numericality => { :only_integer => true }

  has_many :round_users
  has_many :rounds, through: :round_users
end

class Manager < ActiveRecord::Base
  has_many :owns
  has_many :events, through: :owns
end

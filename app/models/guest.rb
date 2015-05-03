class Guest < ActiveRecord::Base
  has_many :attends
  has_many :events, through: :attends
end

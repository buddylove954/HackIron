class Event < ActiveRecord::Base
  has_many :guests, through: :attend
  has_many :managers, through: :own
end

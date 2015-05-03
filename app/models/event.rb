class Event < ActiveRecord::Base
  has_many :attends
  has_many :guests, through: :attends
  has_many :owns
  has_many :managers, through: :owns

  def is_active?
    return Time.now > start_time && Time.now < end_time
  end
end

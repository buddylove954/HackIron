class Attend < ActiveRecord::Base
  belongs_to :guest
  belongs_to :event

  enum status: [:invited, :attending, :registered]
end

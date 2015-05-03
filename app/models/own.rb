class Own < ActiveRecord::Base
  belongs_to :manager
  belongs_to :event
end

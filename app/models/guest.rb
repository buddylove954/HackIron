class Guest < User
  has_many :attends
  has_many :events, through: :attends
end

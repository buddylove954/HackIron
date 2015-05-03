class Manager < User
  has_many :events, through: :own
end

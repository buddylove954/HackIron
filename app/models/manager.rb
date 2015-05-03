class Manager < User
  has_many :owns
  has_many :events, through: :owns
end

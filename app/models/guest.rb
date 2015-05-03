class Guest < User
  has_many :events, through :owns
end

class Teacher < ApplicationRecord
  has_many :courses
  validates :name, presence: true, length: {minimum: 5}
  validates :name, exclusion: { in: %w(Steve),
    message: "%{value} is reserved." }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end

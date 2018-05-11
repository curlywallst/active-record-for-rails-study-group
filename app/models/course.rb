class Course < ApplicationRecord
  belongs_to :teacher
  has_many :course_topics
  has_many :topics, through: :course_topics
end

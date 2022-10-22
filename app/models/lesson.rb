class Lesson < ApplicationRecord
  belongs_to :mode
  belongs_to :user
  has_many : schedule
end

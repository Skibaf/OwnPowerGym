class Lesson < ApplicationRecord
  belongs_to :mode
  belongs_to :user
  has_many :schedules

  accepts_nested_attributes_for :schedules
  validates :lesson, presence: true
end

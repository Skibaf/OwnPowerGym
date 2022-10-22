class Booking < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  belongs_to :pterm
end

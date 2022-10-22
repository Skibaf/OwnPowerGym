class Schedule < ApplicationRecord
  belongs_to :lesson
  accepts_nested_attributes_for :lesson


  enum :status, [ :disponible, :reservado]

  validates_presence_of :lesson

  def self.search_by(search_term)
    where("status = :search_term", search_term: search_term)
  end
end

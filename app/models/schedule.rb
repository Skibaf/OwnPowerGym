class Schedule < ApplicationRecord
  belongs_to :lesson

  enum :status, [ :disponible, :reservado]
end

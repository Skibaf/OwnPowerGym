json.extract! booking, :id, :fecha, :time, :lesson_id, :user_id, :pterm_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)

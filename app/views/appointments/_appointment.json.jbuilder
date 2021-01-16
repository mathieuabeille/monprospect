json.extract! appointment, :id, :meeting, :phone, :firstname, :lastname, :email, :status, :region, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

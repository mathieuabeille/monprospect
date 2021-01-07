json.extract! lead, :id, :email, :number, :leadtype, :quantity, :created_at, :updated_at
json.url lead_url(lead, format: :json)

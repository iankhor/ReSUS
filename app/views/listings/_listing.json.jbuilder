json.extract! listing, :id, :medical_condition_id, :patient_id, :comments, :photo_medical_data, :created_at, :updated_at
json.url listing_url(listing, format: :json)
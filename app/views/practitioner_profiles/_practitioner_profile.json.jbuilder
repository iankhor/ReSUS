json.extract! practitioner_profile, :id, :gender_id, :region_id, :user_id, :registration_number, :first_name, :last_name, :specialty_id, :created_at, :updated_at
json.url practitioner_profile_url(practitioner_profile, format: :json)
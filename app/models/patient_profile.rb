class PatientProfile < ApplicationRecord
  belongs_to :user
  belongs_to :gender
  belongs_to :region
  belongs_to :ethnicity
  belongs_to :blood_type
  belongs_to :marital_status
  belongs_to :allergy

  mount_uploader :photo, PhotoUploader
end

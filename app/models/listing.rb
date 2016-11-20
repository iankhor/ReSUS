class Listing < ApplicationRecord
  belongs_to :medical_condition
  belongs_to :patient, class_name: 'User'
end

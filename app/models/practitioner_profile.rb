class PractitionerProfile < ApplicationRecord
  belongs_to :gender
  belongs_to :region
  belongs_to :user
  belongs_to :specialty
end

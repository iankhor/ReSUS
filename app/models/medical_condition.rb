class MedicalCondition < ApplicationRecord
    has_many :seeks
    has_many :specialties,  through: :seeks
end

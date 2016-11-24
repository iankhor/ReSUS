class Specialty < ApplicationRecord
    has_many :seeks
    has_many :medical_conditions,  through: :seeks

end

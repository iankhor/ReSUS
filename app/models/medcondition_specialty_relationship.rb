class MedconditionSpecialtyRelationship < ApplicationRecord
    belongs_to :specialty
    belongs_to :medical_condition
end

class CreateMedicalConditionsSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_conditions_specialties do |t|
      t.belongs_to :medical_condition, index: true
      t.belongs_to :specialty, index: true
    end
  end
end

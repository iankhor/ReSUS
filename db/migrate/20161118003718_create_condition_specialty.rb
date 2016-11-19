class CreateConditionSpecialty < ActiveRecord::Migration[5.0]
  def change
    create_table :condition_specialties do |t|
      t.belongs_to :medical_conditions, index: true
      t.belongs_to :specialties, index: true
    end
  end
end

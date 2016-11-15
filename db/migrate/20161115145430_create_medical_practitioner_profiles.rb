class CreateMedicalPractitionerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_practitioner_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :registration_number

      t.timestamps
    end
  end
end

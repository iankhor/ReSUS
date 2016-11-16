class CreatePatientProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.references :gender, foreign_key: true
      t.string :date_of_birth
      t.references :region, foreign_key: true
      t.references :ethnicity, foreign_key: true
      t.references :blood_type, foreign_key: true
      t.references :marital_status, foreign_key: true
      t.references :allergy, foreign_key: true
      t.integer :height
      t.integer :weight
      t.integer :contact_number

      t.timestamps
    end
  end
end

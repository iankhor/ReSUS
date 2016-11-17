class CreatePractitionerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :practitioner_profiles do |t|
      t.references :gender, foreign_key: true
      t.references :region, foreign_key: true
      t.references :user, foreign_key: true
      t.string :registration_number
      t.string :first_name
      t.string :last_name
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end

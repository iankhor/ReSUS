class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.references :medical_condition, foreign_key: true
      t.references :patient, foreign_key: { to_table: :users }
      t.string :comments
      t.string :photo_medical_data

      t.timestamps
    end
  end
end

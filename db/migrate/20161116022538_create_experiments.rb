class CreateExperiments < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments do |t|
      t.references :blood_type, foreign_key: true

      t.timestamps
    end
  end
end

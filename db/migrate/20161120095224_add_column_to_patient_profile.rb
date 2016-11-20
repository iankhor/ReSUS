class AddColumnToPatientProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :patient_profiles, :photo, :string
  end
end

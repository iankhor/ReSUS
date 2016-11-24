class AddColumnToPractitionerProfile < ActiveRecord::Migration[5.0]
  def change
      add_column :practitioner_profiles, :photo, :string
  end
end

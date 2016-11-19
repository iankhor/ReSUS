class AddColumnToMedconditionSpecialty < ActiveRecord::Migration[5.0]
  def change
      add_column :medcondition_specialty_relationships, :specialty_id, :integer
      add_column :medcondition_specialty_relationships, :condition_id, :integer
  end
end

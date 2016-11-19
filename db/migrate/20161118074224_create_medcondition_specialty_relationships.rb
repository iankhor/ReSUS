class CreateMedconditionSpecialtyRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :medcondition_specialty_relationships do |t|

      t.timestamps
    end
  end
end

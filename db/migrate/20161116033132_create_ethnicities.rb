class CreateEthnicities < ActiveRecord::Migration[5.0]
  def change
    create_table :ethnicities do |t|
      t.string :name

      t.timestamps
    end
  end
end

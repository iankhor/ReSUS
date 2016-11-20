class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.integer :quote_cost
      t.references :practitioner, foreign_key: true
      t.references :listing, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end
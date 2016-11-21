class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.references :practitioner, foreign_key: { to_table: :users }
      t.references :listing, foreign_key: true
      t.integer :quote_cost
      t.string :comments

      t.timestamps
    end
  end
end

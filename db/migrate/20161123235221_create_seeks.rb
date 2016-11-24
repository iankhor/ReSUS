class CreateSeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :seeks do |t|

      t.timestamps
    end
  end
end

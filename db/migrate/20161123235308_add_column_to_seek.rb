class AddColumnToSeek < ActiveRecord::Migration[5.0]
  def change
    add_column :seeks, :specialty_id, :integer
    add_column :seeks, :medical_condition_id, :integer
  end
end

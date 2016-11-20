class AddPhotoToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :user, foreign_key: true
    add_column :users, :picture, :string
  end
end

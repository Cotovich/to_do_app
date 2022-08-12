class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.string :name
      t.boolean :archived

      t.timestamps
    end
  end
end

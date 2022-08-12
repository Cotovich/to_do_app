class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :main_task_id
      t.integer :list_id
      t.integer :user_id
      t.boolean :is_active
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

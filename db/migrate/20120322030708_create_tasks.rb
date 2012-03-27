class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project
      t.references :manager
      t.float :position
      t.text :description
      t.text :done_so_far
      t.text :need_to_do
      t.text :issues
      t.text :additional_comments
      t.date :started
      t.date :next_followup
      t.date :completed
      t.boolean :done

      t.timestamps
    end
    add_index :tasks, :project_id
    add_index :tasks, :manager_id
  end
end

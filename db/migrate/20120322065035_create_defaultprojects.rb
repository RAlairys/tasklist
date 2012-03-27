class CreateDefaultprojects < ActiveRecord::Migration
  def change
    create_table :defaultprojects do |t|
      t.references :project

      t.timestamps
    end
    add_index :defaultprojects, :project_id
  end
end

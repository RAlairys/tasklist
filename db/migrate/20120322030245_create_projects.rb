class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :priority
      t.text :description
      t.string :website
      t.string :logo
      t.string :businessplan
      t.references :manager

      t.timestamps
    end
    add_index :projects, :manager_id
  end
end

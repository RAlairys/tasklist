class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :photo

      t.timestamps
    end
  end
end

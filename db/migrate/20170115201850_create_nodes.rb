class CreateNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :address
      t.string :port
      t.string :username
      t.string :password
      t.integer :user_id

      t.timestamps
    end
	add_index :nodes, :user_id
  end
end

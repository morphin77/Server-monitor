class CreateRecources < ActiveRecord::Migration[5.0]
  def change
    create_table :recources do |t|
      t.string :name
      t.string :worker_name

      t.timestamps
    end
  end
end

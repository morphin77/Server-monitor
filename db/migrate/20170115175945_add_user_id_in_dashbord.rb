class AddUserIdInDashbord < ActiveRecord::Migration[5.0]
  def change
  	add_column :dashboards, :user_id, :integer
  end
end

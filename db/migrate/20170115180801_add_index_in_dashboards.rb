class AddIndexInDashboards < ActiveRecord::Migration[5.0]
  def change
  	add_index :dashboards, :user_id
  end
end

class CreateSysInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :sys_infos do |t|
    	t.integer :memory_used
      t.timestamps
    end
  end
end

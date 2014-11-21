class AddUserIdtoBitacoras < ActiveRecord::Migration
  def change
  	add_column :bitacoras, :user_id, :integer
  end
end

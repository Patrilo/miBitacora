class CreateBitacoras < ActiveRecord::Migration
  def change
    create_table :bitacoras do |t|
      t.string :name

      t.timestamps
    end
  end
end

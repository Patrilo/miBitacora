class CreateBitacoras < ActiveRecord::Migration
  def change
    create_table :bitacoras do |t|
      t.string :name
      t.string :provincia
      t.string :visitas
      t.string :acompañantes
      t.string :anecdotas
      t.string :fecha

      t.timestamps
    end
  end
end

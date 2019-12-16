class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.text :name
      t.text :water_after

      t.timestamps
    end
  end
end

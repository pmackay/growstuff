class CreatePlantParts < ActiveRecord::Migration
  def change
    create_table :plant_parts do |t|
      t.string :name

      t.timestamps
    end
  end
end

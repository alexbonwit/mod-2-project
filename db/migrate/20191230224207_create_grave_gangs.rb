class CreateGraveGangs < ActiveRecord::Migration[6.0]
  def change
    create_table :grave_gangs do |t|
      t.string :name
      t.integer :location_id
    end
  end
end

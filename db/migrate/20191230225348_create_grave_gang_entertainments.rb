class CreateGraveGangEntertainments < ActiveRecord::Migration[6.0]
  def change
    create_table :grave_gang_entertainments do |t|
      t.integer :grave_gang_id
      t.integer :entertainment_id
    end
  end
end

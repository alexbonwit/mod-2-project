class CreateEntertainments < ActiveRecord::Migration[6.0]
  def change
    create_table :entertainments do |t|
      t.string :title
      t.text :description
    end
  end
end

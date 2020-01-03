class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :username
      t.string :full_name
      t.string :birth_date
      t.string :death_date
      t.integer :grave_gang_id
      t.integer :theme_id
      t.string :password_digest
    end
  end
end

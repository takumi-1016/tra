class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name null: false
      t.text :description
      t.integer :price null: false
      t.string :location null: false
      t.string :image

      t.timestamps
    end
  end
end

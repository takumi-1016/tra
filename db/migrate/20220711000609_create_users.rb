class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :description 
      t.string :email null: false
      t.string :password null: false
      t.string :image

      t.timestamps
      t.index :email, unique: true
    end
  end
end

class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start_date null: false
      t.date :end_date null: false
      t.integer :number null: false

      t.timestamps
    end
  end
end

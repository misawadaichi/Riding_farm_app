class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :menu, foreign_key: true
      t.datetime :start

      t.timestamps
    end
  end
end

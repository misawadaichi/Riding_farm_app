class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :admin,   foreign_key:true 
      t.references :user,    foreign_key:true  
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end

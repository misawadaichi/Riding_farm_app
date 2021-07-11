class ReservationAddColumReserved < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :reserved, :boolean, default: false, null: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

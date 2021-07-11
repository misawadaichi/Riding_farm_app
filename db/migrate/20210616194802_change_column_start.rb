class ChangeColumnStart < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :start, :start_time
  end
end

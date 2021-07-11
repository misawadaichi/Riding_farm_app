class ChangeTime < ActiveRecord::Migration[6.1]
  def change
    change_column :menus, :time, :integer
  end
end

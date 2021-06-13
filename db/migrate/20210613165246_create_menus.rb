class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :title
      t.integer :money
      t.time :time
      t.text :memo

      t.timestamps
    end
  end
end

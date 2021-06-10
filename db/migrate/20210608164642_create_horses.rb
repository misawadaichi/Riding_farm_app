class CreateHorses < ActiveRecord::Migration[6.1]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :variety
      t.string :sex
      t.string :color
      t.string :race_name
      t.time :birthday
      t.time :entry
      t.string :memo
      t.string :image

      t.timestamps
    end
  end
end

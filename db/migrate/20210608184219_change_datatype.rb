class ChangeDatatype < ActiveRecord::Migration[6.1]
  def change
    change_column :horses, :birthday, :date
    change_column :horses, :entry, :date
  end
end

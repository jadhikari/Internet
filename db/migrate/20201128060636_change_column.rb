class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :internet_orders, :sn, :int, unique: true, auto_increment: true
  end
end

class ChangeDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :internet_orders, :dob , :datetime
  end
end

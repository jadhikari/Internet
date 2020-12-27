class ChangeJobsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :internet_orders, :dob , :date
  end
end

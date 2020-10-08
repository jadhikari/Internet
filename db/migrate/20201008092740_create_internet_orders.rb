class CreateInternetOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :internet_orders do |t|
      t.integer :sn
      t.datetime :apply_date
      t.string :name
      t.string :fb_id
      t.integer :phone_number
      t.integer :postal_code
      t.string :house_type
      t.timestamp :kouji_date
      t.string :plan
      t.string :link
      t.text :conclusion

      t.timestamps
    end
  end
end

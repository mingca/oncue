class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name,			limit: 255
      t.string :email,			limit: 255
      t.string :phone,			limit: 255
      t.string :from_areacode,	limit: 255
      t.string :from_zip,		limit: 255
      t.string :from_state,		limit: 255
      t.string :from_city,		limit: 255
      t.string :to_areacode,	limit: 255
      t.string :to_zip,			limit: 255
      t.string :to_state,		limit: 255
      t.string :to_city,		limit: 255
      t.integer :bedrooms
      t.integer :distance
      t.date	:move_date

      t.timestamps
    end
  end
end

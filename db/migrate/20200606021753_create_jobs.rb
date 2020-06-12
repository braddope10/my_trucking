class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :start_time
      t.string :end_time
      t.string :material
      t.string :weight
      t.string :dropoff
      t.string :pickup
      t.string :driver
      t.string :contact_name
      t.string :contact_number 
      t.integer :hourly_rate
      t.integer :po_number

      t.integer :user_id
      t.integer :broker_id
      t.integer :truck_id
      t.integer :book_id

      t.timestamps
    end
  end
end

class CreateDates < ActiveRecord::Migration[6.0]
  def change
    create_table :dates do |t|
      t.string :time

      t.integer :user_id
      t.integer :truck_id
      t.integer :job_id
      t.integer :broker_id

      t.timestamps
    end
  end
end

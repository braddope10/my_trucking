class CreateBrokers < ActiveRecord::Migration[6.0]
  def change
    create_table :brokers do |t|
      t.string :name

      t.integer :user_id
      t.integer :date_id

      t.timestamps
    end
  end
end

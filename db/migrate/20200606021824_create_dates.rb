class CreateDates < ActiveRecord::Migration[6.0]
  def change
    create_table :dates do |t|
      t.string :time

      t.integer :user_id

      t.timestamps
    end
  end
end

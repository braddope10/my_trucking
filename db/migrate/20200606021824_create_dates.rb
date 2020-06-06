class CreateDates < ActiveRecord::Migration[6.0]
  def change
    create_table :dates do |t|
      t.string :time

      t.timestamps
    end
  end
end

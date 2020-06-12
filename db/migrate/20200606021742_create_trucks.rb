class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string :make
      t.integer :year
      t.string :color

      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end

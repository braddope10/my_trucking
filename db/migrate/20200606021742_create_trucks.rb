class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string :make
      t.stirng :model
      t.string :year
      t.string :color

      t.timestamps
    end
  end
end

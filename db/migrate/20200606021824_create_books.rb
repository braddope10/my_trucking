class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :monthdayyear

      t.integer :user_id

      t.timestamps
    end
  end
end

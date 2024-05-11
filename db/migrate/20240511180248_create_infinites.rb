class CreateInfinites < ActiveRecord::Migration[7.1]
  def change
    create_table :infinites do |t|
      t.integer :count
      t.float :price

      t.timestamps
    end
  end
end

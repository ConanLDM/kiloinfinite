class CreateEnigmas < ActiveRecord::Migration[7.2]
  def change
    create_table :enigmas do |t|
      t.string :paradox
      t.text :body

      t.timestamps
    end
  end
end

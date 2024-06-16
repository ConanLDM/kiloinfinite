class CreateEnigmaRatings < ActiveRecord::Migration[7.2]
  def change
    create_table :enigma_ratings do |t|
      t.references :enigma, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end

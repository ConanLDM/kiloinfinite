class AddDescriptionToInfinites < ActiveRecord::Migration[7.2]
  def change
    add_column :infinites, :description, :text
  end
end

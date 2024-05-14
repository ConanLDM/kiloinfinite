class AddNameValidationToInfinite < ActiveRecord::Migration[7.1]
  def change
    add_column :infinites, :name, :string
  end
end

class AddWeightToKilos < ActiveRecord::Migration[7.1]
  def change
    add_column :kilos, :weight, :float
  end
end

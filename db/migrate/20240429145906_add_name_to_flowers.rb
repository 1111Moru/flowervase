class AddNameToFlowers < ActiveRecord::Migration[6.1]
  def change
    add_column :flowers, :name, :string
  end
end

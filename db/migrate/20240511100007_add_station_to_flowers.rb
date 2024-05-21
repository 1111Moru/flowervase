class AddStationToFlowers < ActiveRecord::Migration[6.1]
  def change
    add_column :flowers, :station, :string
  end
end

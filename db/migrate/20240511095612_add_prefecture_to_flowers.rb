class AddPrefectureToFlowers < ActiveRecord::Migration[6.1]
  def change
    add_column :flowers, :prefecture, :string
  end
end

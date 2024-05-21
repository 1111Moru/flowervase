class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :shop
      t.string :type
      t.string :color

      t.timestamps
    end
  end
end

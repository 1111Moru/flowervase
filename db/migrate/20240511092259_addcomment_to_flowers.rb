class AddcommentToFlowers < ActiveRecord::Migration[6.1]
  def change
    add_column :flowers, :comment, :text
  end
end

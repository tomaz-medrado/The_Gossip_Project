class AddCategoryIdToGossips < ActiveRecord::Migration[6.0]
  def change
    add_reference :gossips, :category
  end
end

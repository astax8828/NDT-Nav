class AddColumnSubCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :category
  end
end

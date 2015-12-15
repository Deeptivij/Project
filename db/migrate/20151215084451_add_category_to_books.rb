class AddCategoryToBooks < ActiveRecord::Migration
  def change
    add_column :books, :Category, :string
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.date :return

      t.timestamps null: false
    end
  end
end

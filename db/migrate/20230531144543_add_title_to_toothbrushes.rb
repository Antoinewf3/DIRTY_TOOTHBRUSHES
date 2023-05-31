class AddTitleToToothbrushes < ActiveRecord::Migration[7.0]
  def change
    add_column :toothbrushes, :title, :string
  end
end

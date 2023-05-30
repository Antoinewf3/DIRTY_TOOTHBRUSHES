class AddColumnToToothbrushes < ActiveRecord::Migration[7.0]
  def change
    add_column :toothbrushes, :content, :text
  end
end

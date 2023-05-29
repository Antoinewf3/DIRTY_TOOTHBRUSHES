class CreateToothbrushes < ActiveRecord::Migration[7.0]
  def change
    create_table :toothbrushes do |t|
      t.string :category
      t.integer :price
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end

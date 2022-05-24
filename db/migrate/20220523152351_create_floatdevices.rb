class CreateFloatdevices < ActiveRecord::Migration[6.1]
  def change
    create_table :floatdevices do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.integer :size
      t.text :description
      t.text :special_features
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

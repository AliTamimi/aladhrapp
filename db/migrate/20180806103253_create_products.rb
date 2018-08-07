class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product
      t.boolean :ownbyalahra , default: false
      t.boolean :other, default: false
      t.boolean :isDishdash, default: false
      t.float :price
      t.boolean :isActive, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

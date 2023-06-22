class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_code
      t.string :product_description
      t.integer :product_class_id

      t.timestamps
    end
  end
end

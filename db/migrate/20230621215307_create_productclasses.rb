class CreateProductclasses < ActiveRecord::Migration[7.0]
  def change
    create_table :productclasses do |t|
      t.string :product_class_name
      t.string :product_class_code

      t.timestamps
    end
  end
end

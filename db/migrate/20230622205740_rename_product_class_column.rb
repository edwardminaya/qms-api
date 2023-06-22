class RenameProductClassColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :product_class_id, :productclass_id
  end
end

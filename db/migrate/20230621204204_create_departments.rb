class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :department_name
      t.string :department_manager

      t.timestamps
    end
  end
end

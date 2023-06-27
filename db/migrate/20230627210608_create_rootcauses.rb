class CreateRootcauses < ActiveRecord::Migration[7.0]
  def change
    create_table :rootcauses do |t|
      t.integer :product_id
      t.string :issue_description
      t.string :severity
      t.integer :department_id
      t.string :root_cause_analysis

      t.timestamps
    end
  end
end

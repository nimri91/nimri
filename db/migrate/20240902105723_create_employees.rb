class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :hire_date
      t.string :employment_number
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateFinancialPackages < ActiveRecord::Migration[6.1]
  def change
    create_table :financial_packages do |t|
      t.date :from_date
      t.date :to_date
      t.decimal :amount
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

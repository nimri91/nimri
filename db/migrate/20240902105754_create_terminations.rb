class CreateTerminations < ActiveRecord::Migration[6.1]
  def change
    create_table :terminations do |t|
      t.date :date
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

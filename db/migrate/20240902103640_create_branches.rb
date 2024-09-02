class CreateBranches < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :location
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

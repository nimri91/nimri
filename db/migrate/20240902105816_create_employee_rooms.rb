class CreateEmployeeRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_rooms do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end

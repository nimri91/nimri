class CreateAttendanceSetups < ActiveRecord::Migration[6.1]
  def change
    create_table :attendance_setups do |t|
      t.boolean :roaster
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end

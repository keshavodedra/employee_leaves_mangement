class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.date :date
      t.integer :vacation_type
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

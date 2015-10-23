class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.integer :expected_day
      t.integer :expected_month

      t.timestamps null: false
    end
  end
end

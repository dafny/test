class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :company, index: true, foreign_key: true
      t.string :ddd, null: false
      t.string :number, null: false

      t.timestamps null: false
    end
  end
end

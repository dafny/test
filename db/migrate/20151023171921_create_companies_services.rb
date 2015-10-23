class CreateCompaniesServices < ActiveRecord::Migration
  def change
    create_table :companies_services do |t|
      t.references :company, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.date :expected_send_date
      t.datetime :send_at
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

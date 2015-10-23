class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :registry_number, null: false
      t.string :state_registration
      t.string :municipal_registration
      t.boolean :active

      t.timestamps null: false
    end
  end
end

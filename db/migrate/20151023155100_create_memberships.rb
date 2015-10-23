class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :company, index: true, foreign_key: true
      t.float :amount, null: false
      t.float :amount_paid
      t.datetime :paid_at
      t.date :expires_on, null: false

      t.timestamps null: false
    end
  end
end

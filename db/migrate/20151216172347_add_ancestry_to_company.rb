class AddAncestryToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :ancestry, :string
    add_index :companies, :ancestry
  end
end

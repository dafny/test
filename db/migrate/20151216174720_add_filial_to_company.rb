class AddFilialToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :filial, :boolean, default: false
  end
end

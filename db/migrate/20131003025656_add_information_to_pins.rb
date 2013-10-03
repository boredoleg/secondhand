class AddInformationToPins < ActiveRecord::Migration
  def change
    add_column :pins, :productname, :string
    add_column :pins, :email, :string
    add_column :pins, :phone, :string
    add_column :pins, :price, :decimal
  end
end

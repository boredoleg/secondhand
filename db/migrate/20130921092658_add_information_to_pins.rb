class AddInformationToPins < ActiveRecord::Migration
  def change
    add_column :pins, :title, :string
    add_column :pins, :price, :string
    add_column :pins, :contact, :string
  end
end

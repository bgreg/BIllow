class AddFieldsToHomes < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :city, :string
    add_column :homes, :street_name, :string
    add_column :homes, :building_number, :integer
    add_column :homes, :zipcode, :integer
    add_column :homes, :postcode, :integer
    add_column :homes, :state, :string
    add_column :homes, :country, :string
  end
end

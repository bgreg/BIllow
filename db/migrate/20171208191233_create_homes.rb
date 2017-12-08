class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.belongs_to :locations
      t.string :address
      t.boolean :available
      t.timestamps
    end
  end
end

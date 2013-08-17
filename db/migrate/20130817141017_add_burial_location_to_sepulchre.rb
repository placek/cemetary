class AddBurialLocationToSepulchre < ActiveRecord::Migration
  def change
    add_column :sepulchres, :burial_location, :string
  end
end

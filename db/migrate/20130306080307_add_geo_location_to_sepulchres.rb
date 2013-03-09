class AddGeoLocationToSepulchres < ActiveRecord::Migration
  def change
    add_column :sepulchres, :lat, :float, default: 51.77761
    add_column :sepulchres, :lng, :float, default: 19.43505
  end
end

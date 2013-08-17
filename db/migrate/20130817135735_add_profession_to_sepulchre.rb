class AddProfessionToSepulchre < ActiveRecord::Migration
  def change
    add_column :sepulchres, :profession, :string
  end
end

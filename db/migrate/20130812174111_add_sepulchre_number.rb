class AddSepulchreNumber < ActiveRecord::Migration
  def change
    add_column :sepulchres, :number, :string
  end
end

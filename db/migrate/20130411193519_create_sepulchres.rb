class CreateSepulchres < ActiveRecord::Migration
  def change
    create_table :sepulchres do |t|
      t.string :name
      t.string :surname
      t.string :family_name
      t.string :birth_date
      t.string :birth_location
      t.string :burial_date
      t.string :complex
      t.text :gravestone
      t.text :description
      t.integer :quarter_id

      t.timestamps
    end

    add_index :sepulchres, :name
    add_index :sepulchres, :surname
    add_index :sepulchres, :burial_date
    add_index :sepulchres, :complex
    add_index :sepulchres, :quarter_id
  end
end

class CreateSepulchres < ActiveRecord::Migration
  def change
    create_table :sepulchres do |t|
      t.string :decedent, null: false
      t.date :birth
      t.date :burial, null: false
      t.text :history

      t.timestamps
    end
    add_index :sepulchres, :decedent
    add_index :sepulchres, :burial
  end
end

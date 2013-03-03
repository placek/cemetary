class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_column :sepulchres, :part_id, :integer
  end
end

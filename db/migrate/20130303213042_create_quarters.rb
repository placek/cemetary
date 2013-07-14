class CreateQuarters < ActiveRecord::Migration
  def change
    create_table :quarters do |t|
      t.string :name
      t.string :slug
      t.integer :part_id

      t.timestamps
    end
  end
end

class AddAvaliabilityFlagToParts < ActiveRecord::Migration
  def change
    add_column :parts, :avaliable, :boolean
  end
end

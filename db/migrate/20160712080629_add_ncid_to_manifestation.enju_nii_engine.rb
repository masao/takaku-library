# This migration comes from enju_nii_engine (originally 20121113163717)
class AddNcidToManifestation < ActiveRecord::Migration
  def change
    add_column :manifestations, :ncid, :string
    add_index :manifestations, :ncid
  end
end

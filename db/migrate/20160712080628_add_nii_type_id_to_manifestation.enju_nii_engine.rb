# This migration comes from enju_nii_engine (originally 20090913185239)
class AddNiiTypeIdToManifestation < ActiveRecord::Migration
  def self.up
    add_column :manifestations, :nii_type_id, :integer
    add_index :manifestations, :nii_type_id
  end

  def self.down
    remove_column :manifestations, :nii_type_id
  end
end

# This migration comes from enju_nii_engine (originally 20141115051741)
class RemoveNcidFromManifestations < ActiveRecord::Migration
  def change
    remove_column :manifestations, :ncid
  end
end

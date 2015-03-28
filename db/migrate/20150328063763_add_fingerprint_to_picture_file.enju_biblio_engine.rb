# This migration comes from enju_biblio_engine (originally 20120413100352)
class AddFingerprintToPictureFile < ActiveRecord::Migration
  def change
    add_column :picture_files, :picture_fingerprint, :string
  end
end

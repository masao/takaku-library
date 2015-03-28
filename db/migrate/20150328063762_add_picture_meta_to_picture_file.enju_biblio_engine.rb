# This migration comes from enju_biblio_engine (originally 20120413072700)
class AddPictureMetaToPictureFile < ActiveRecord::Migration
  def change
    add_column :picture_files, :picture_meta, :text
  end
end

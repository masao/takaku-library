# This migration comes from enju_manifestation_viewer_engine (originally 20160813191533)
class AddBookJacketSourceToLibraryGroup < ActiveRecord::Migration
  def change
    add_column :library_groups, :book_jacket_source, :string
  end
end

# This migration comes from enju_biblio_engine (originally 20120415164821)
class AddAttachmentMetaToManifestation < ActiveRecord::Migration
  def change
    add_column :manifestations, :attachment_meta, :text
  end
end

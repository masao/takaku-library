# This migration comes from enju_biblio_engine (originally 20120319120638)
class AddContentTypeIdToManifestation < ActiveRecord::Migration
  def change
    add_column :manifestations, :content_type_id, :integer, :default => 1

  end
end

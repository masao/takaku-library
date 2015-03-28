# This migration comes from enju_biblio_engine (originally 20140813182425)
class AddPublicationPlaceToManifestation < ActiveRecord::Migration
  def change
    add_column :manifestations, :publication_place, :text
  end
end

# This migration comes from enju_biblio_engine (originally 20171119051258)
class SetNotNullToManifestationIdOnItems < ActiveRecord::Migration
  def change
    change_column_null :items, :manifestation_id, false
  end
end

# This migration comes from enju_biblio_engine (originally 20140720140916)
class AddBindingItemIdentifierToItem < ActiveRecord::Migration
  def change
    add_column :items, :binding_item_identifier, :string
    add_column :items, :binding_call_number, :string
    add_column :items, :binded_at, :datetime
    add_index :items, :binding_item_identifier
  end
end

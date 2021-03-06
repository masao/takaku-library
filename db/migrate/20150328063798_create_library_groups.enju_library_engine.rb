# This migration comes from enju_library_engine (originally 80)
class CreateLibraryGroups < ActiveRecord::Migration
  def change
    create_table :library_groups do |t|
      t.string :name, :null => false
      t.text :display_name
      t.string :short_name, :null => false
      t.text :my_networks
      t.text :login_banner
      t.text :note
      t.integer :country_id
      t.integer :position

      t.timestamps
    end
    add_index :library_groups, :short_name
  end
end

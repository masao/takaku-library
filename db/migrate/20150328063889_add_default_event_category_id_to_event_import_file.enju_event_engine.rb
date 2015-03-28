# This migration comes from enju_event_engine (originally 20140814070854)
class AddDefaultEventCategoryIdToEventImportFile < ActiveRecord::Migration
  def change
    add_column :event_import_files, :default_event_category_id, :integer
  end
end

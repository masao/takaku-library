# This migration comes from enju_biblio_engine (originally 20140614065404)
class CreateResourceExportFiles < ActiveRecord::Migration
  def change
    create_table :resource_export_files do |t|
      t.integer :user_id
      t.attachment :resource_export
      t.datetime :executed_at

      t.timestamps
    end
  end
end

# This migration comes from enju_event_engine (originally 20140812152348)
class CreateEventExportFiles < ActiveRecord::Migration
  def change
    create_table :event_export_files do |t|
      t.integer :user_id
      t.attachment :event_export
      t.datetime :executed_at

      t.timestamps
    end
  end
end

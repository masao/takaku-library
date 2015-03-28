# This migration comes from enju_biblio_engine (originally 20100925074559)
class CreateAgentImportResults < ActiveRecord::Migration
  def change
    create_table :agent_import_results do |t|
      t.integer :agent_import_file_id
      t.integer :agent_id
      t.text :body

      t.timestamps
    end
  end
end

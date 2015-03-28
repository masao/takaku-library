# This migration comes from enju_biblio_engine (originally 133)
class CreateAgentMerges < ActiveRecord::Migration
  def self.up
    create_table :agent_merges do |t|
      t.integer :agent_id, :agent_merge_list_id, :null => false

      t.timestamps
    end
    add_index :agent_merges, :agent_id
    add_index :agent_merges, :agent_merge_list_id
  end

  def self.down
    drop_table :agent_merges
  end
end

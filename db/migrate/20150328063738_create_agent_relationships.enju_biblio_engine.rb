# This migration comes from enju_biblio_engine (originally 20100606073747)
class CreateAgentRelationships < ActiveRecord::Migration
  def change
    create_table :agent_relationships do |t|
      t.integer :parent_id
      t.integer :child_id
      t.integer :agent_relationship_type_id

      t.timestamps
    end
    add_index :agent_relationships, :parent_id
    add_index :agent_relationships, :child_id
  end
end

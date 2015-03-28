# This migration comes from enju_biblio_engine (originally 47)
class CreateProduces < ActiveRecord::Migration
  def change
    create_table :produces do |t|
      t.references :agent, :null => false
      t.references :manifestation, :null => false
      t.integer :position
      t.timestamps
    end
    add_index :produces, :agent_id
    add_index :produces, :manifestation_id
  end
end

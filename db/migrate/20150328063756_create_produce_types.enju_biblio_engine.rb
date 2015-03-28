# This migration comes from enju_biblio_engine (originally 20111124110355)
class CreateProduceTypes < ActiveRecord::Migration
  def change
    create_table :produce_types do |t|
      t.string :name
      t.text :display_name
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end

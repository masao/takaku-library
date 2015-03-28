# This migration comes from enju_biblio_engine (originally 20130506175303)
class CreateIdentifierTypes < ActiveRecord::Migration
  def change
    create_table :identifier_types do |t|
      t.string :name
      t.text :display_name
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end

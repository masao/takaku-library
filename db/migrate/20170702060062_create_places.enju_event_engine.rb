# This migration comes from enju_event_engine (originally 20151128142913)
class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :term
      t.text :city
      t.references :country, index: true
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
    add_index :places, :term
  end
end

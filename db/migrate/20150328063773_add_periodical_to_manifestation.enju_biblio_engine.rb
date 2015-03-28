# This migration comes from enju_biblio_engine (originally 20130421093852)
class AddPeriodicalToManifestation < ActiveRecord::Migration
  def change
    add_column :manifestations, :periodical, :boolean
  end
end

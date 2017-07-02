# This migration comes from enju_circulation_engine (originally 20160703184650)
class AddMostRecentToManifestationCheckoutStatTransitions < ActiveRecord::Migration
  def up
    add_column :manifestation_checkout_stat_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :manifestation_checkout_stat_transitions, :most_recent
  end
end

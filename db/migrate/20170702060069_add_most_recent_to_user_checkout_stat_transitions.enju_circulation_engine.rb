# This migration comes from enju_circulation_engine (originally 20160703184747)
class AddMostRecentToUserCheckoutStatTransitions < ActiveRecord::Migration
  def up
    add_column :user_checkout_stat_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :user_checkout_stat_transitions, :most_recent
  end
end

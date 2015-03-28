# This migration comes from enju_circulation_engine (originally 20090321130448)
class AddCompletedAtToUserCheckoutStat < ActiveRecord::Migration
  def self.up
    add_column :user_checkout_stats, :started_at, :datetime
    add_column :user_checkout_stats, :completed_at, :datetime
    add_column :user_reserve_stats, :started_at, :datetime
    add_column :user_reserve_stats, :completed_at, :datetime
    add_column :manifestation_checkout_stats, :started_at, :datetime
    add_column :manifestation_checkout_stats, :completed_at, :datetime
    add_column :manifestation_reserve_stats, :started_at, :datetime
    add_column :manifestation_reserve_stats, :completed_at, :datetime
  end

  def self.down
    remove_column :user_checkout_stats, :started_at
    remove_column :user_checkout_stats, :completed_at
    remove_column :user_reserve_stats, :started_at
    remove_column :user_reserve_stats, :completed_at
    remove_column :manifestation_checkout_stats, :started_at
    remove_column :manifestation_checkout_stats, :completed_at
    remove_column :manifestation_reserve_stats, :started_at
    remove_column :manifestation_reserve_stats, :completed_at
  end
end

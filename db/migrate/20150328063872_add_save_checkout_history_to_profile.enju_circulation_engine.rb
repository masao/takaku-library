# This migration comes from enju_circulation_engine (originally 20140810091417)
class AddSaveCheckoutHistoryToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :save_checkout_history, :boolean, :default => false, :null => false
  end
end

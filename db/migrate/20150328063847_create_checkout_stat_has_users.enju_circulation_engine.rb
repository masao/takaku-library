# This migration comes from enju_circulation_engine (originally 20081215094955)
class CreateCheckoutStatHasUsers < ActiveRecord::Migration
  def self.up
    create_table :checkout_stat_has_users do |t|
      t.integer :user_checkout_stat_id, :null => false
      t.integer :user_id, :null => false
      t.integer :checkouts_count, :default => 0, :null => false

      t.timestamps
    end
    add_index :checkout_stat_has_users, :user_checkout_stat_id
    add_index :checkout_stat_has_users, :user_id
  end

  def self.down
    drop_table :checkout_stat_has_users
  end
end

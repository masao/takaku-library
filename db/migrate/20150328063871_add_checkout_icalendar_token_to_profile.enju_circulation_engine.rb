# This migration comes from enju_circulation_engine (originally 20140810091231)
class AddCheckoutIcalendarTokenToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :checkout_icalendar_token, :string
    add_index :profiles, :checkout_icalendar_token, :unique => true
  end
end

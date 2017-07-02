# This migration comes from enju_event_engine (originally 20151201163718)
class AddPlaceIdToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :place, index: true
  end
end

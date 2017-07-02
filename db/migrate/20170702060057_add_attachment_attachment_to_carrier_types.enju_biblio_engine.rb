# This migration comes from enju_biblio_engine (originally 20160820004638)
class AddAttachmentAttachmentToCarrierTypes < ActiveRecord::Migration
  def self.up
    change_table :carrier_types do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :carrier_types, :attachment
  end
end

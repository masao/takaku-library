# This migration comes from enju_leaf_engine (originally 20141003181336)
class AddFullNameTranscriptionToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :full_name_transcription, :text
  end
end

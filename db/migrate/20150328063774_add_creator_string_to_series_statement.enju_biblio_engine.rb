# This migration comes from enju_biblio_engine (originally 20130421155019)
class AddCreatorStringToSeriesStatement < ActiveRecord::Migration
  def change
    add_column :series_statements, :creator_string, :text
    add_column :series_statements, :volume_number_string, :text
    add_column :series_statements, :volume_number_transcription_string, :text
  end
end

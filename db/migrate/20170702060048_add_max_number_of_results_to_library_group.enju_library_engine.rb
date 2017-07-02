# This migration comes from enju_library_engine (originally 20160813191647)
class AddMaxNumberOfResultsToLibraryGroup < ActiveRecord::Migration
  def change
    add_column :library_groups, :max_number_of_results, :integer, default: 500
  end
end

# This migration comes from enju_biblio_engine (originally 20110627034940)
class CreateSeriesStatementMergeLists < ActiveRecord::Migration
  def change
    create_table :series_statement_merge_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end

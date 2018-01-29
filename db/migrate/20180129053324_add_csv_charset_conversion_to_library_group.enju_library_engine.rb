# This migration comes from enju_library_engine (originally 20170305064014)
class AddCsvCharsetConversionToLibraryGroup < ActiveRecord::Migration
  def change
    add_column :library_groups, :csv_charset_conversion, :boolean, null: false, default: false
  end
end

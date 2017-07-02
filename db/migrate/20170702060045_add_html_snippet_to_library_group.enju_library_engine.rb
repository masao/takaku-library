# This migration comes from enju_library_engine (originally 20160610093229)
class AddHtmlSnippetToLibraryGroup < ActiveRecord::Migration
  def change
    add_column :library_groups, :html_snippet, :text
  end
end

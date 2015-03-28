# This migration comes from enju_library_engine (originally 20120105074911)
class AddIsilToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :isil, :string
  end
end

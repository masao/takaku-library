# This migration comes from enju_leaf_engine (originally 41)
class CreateRoles < ActiveRecord::Migration
  def change
    create_table "roles" do |t|
      t.column :name, :string, :null => false
      t.column :display_name, :string
      t.column :note, :text
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
      t.integer :score, :default => 0, :null => false
      t.integer :position
    end
  end
end

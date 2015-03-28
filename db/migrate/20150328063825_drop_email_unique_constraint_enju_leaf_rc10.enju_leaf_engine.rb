# This migration comes from enju_leaf_engine (originally 20140610123439)
class DropEmailUniqueConstraintEnjuLeafRc10 < ActiveRecord::Migration
  def up
    remove_index :users, :email
    add_index :users, :email
  end

  def down
    remove_index :users, :email
    add_index :users, :email, unique: true
  end
end

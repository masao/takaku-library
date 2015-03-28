# This migration comes from enju_leaf_engine (originally 20141003182825)
class AddDateOfBirthToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :date_of_birth, :datetime
  end
end

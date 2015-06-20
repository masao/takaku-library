# This migration comes from enju_leaf_engine (originally 20150421023923)
class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :profile_id

      t.timestamps null: false
    end
    add_index :identities, :name
    add_index :identities, :email
    add_index :identities, :profile_id
  end
end

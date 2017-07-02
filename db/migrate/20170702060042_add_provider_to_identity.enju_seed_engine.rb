# This migration comes from enju_seed_engine (originally 20151126005552)
class AddProviderToIdentity < ActiveRecord::Migration
  def change
    add_column :identities, :provider, :string
  end
end

# This migration comes from enju_biblio_engine (originally 20111124112131)
class AddCreateTypeToCreate < ActiveRecord::Migration
  def change
    add_column :creates, :create_type_id, :integer
    add_column :realizes, :realize_type_id, :integer
    add_column :produces, :produce_type_id, :integer
  end
end

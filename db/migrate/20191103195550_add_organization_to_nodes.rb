class AddOrganizationToNodes < ActiveRecord::Migration[6.0]
  def change
    add_reference :nodes, :organization, null: false, foreign_key: true
  end
end

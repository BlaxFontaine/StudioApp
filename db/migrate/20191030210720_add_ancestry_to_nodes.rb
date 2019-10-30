class AddAncestryToNodes < ActiveRecord::Migration[6.0]
  def change
    add_column :nodes, :ancestry, :string
    add_index :nodes, :ancestry
  end
end

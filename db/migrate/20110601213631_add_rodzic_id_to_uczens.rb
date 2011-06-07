class AddRodzicIdToUczens < ActiveRecord::Migration
  def self.up
    add_column :uczens, :rodzic_id, :integer
  end

  def self.down
    remove_column :uczens, :rodzic_id
  end
end

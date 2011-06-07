class RemovePrzedmiotIdFromPrzedmiots < ActiveRecord::Migration
  def self.up
    remove_column :przedmiots, :przedmiot_id, :integer
  end

  def self.down
    add_column :przedmiots, :przedmiot_id
  end
end

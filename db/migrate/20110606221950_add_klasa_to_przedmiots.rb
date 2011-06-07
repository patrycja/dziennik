class AddKlasaToPrzedmiots < ActiveRecord::Migration
  def self.up
    add_column :przedmiots, :klasa, :string
  end

  def self.down
    remove_column :przedmiots, :klasa
  end
end

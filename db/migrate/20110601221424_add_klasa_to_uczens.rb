class AddKlasaToUczens < ActiveRecord::Migration
  def self.up
    add_column :uczens, :klasa, :string
  end

  def self.down
    remove_column :uczens, :klasa
  end
end

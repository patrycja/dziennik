class AddDetailsToUczens < ActiveRecord::Migration
  def self.up
    add_column :uczens, :klasa_id, :integer
    add_column :uczens, :imie, :string
    add_column :uczens, :nazwisko, :string
    add_column :uczens, :data_urodzenia, :string
    add_column :uczens, :pesel, :integer
  end

  def self.down
    remove_column :uczens, :pesel
    remove_column :uczens, :data_urodzenia
    remove_column :uczens, :nazwisko
    remove_column :uczens, :imie
    remove_column :uczens, :klasa_id
  end
end

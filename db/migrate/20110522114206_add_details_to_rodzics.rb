class AddDetailsToRodzics < ActiveRecord::Migration
  def self.up
    add_column :rodzics, :uczen_id, :integer
    add_column :rodzics, :imie, :string
    add_column :rodzics, :nazwisko, :string
    add_column :rodzics, :telefon, :string
  end

  def self.down
    remove_column :rodzics, :telefon
    remove_column :rodzics, :nazwisko
    remove_column :rodzics, :imie
    remove_column :rodzics, :uczen_id
  end
end

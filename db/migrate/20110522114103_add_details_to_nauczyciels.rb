class AddDetailsToNauczyciels < ActiveRecord::Migration
  def self.up
    add_column :nauczyciels, :imie, :string
    add_column :nauczyciels, :nazwisko, :string
    add_column :nauczyciels, :telefon, :string
  end

  def self.down
    remove_column :nauczyciels, :telefon
    remove_column :nauczyciels, :nazwisko
    remove_column :nauczyciels, :imie
  end
end

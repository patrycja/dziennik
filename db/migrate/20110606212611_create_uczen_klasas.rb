class CreateUczenKlasas < ActiveRecord::Migration
  def self.up
    create_table :uczen_klasas do |t|
      t.integer :uczen_id
      t.integer :klasa_id

      t.timestamps
    end
  end

  def self.down
    drop_table :uczen_klasas
  end
end

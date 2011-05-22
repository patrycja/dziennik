class CreateOcenas < ActiveRecord::Migration
  def self.up
    create_table :ocenas do |t|
      t.string :rodzaj
      t.string :rok_szkolny
      t.boolean :archiwalna
      t.integer :przedmiot_id
      t.integer :nauczyciel_id
      t.integer :uczen_id
      t.integer :wartosc

      t.timestamps
    end
  end

  def self.down
    drop_table :ocenas
  end
end

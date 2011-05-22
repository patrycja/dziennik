class CreatePrzedmiots < ActiveRecord::Migration
  def self.up
    create_table :przedmiots do |t|
      t.integer :nauczyciel_id
      t.integer :przedmiot_id
      t.string :nazwa
      t.string :rok_szkolny

      t.timestamps
    end
  end

  def self.down
    drop_table :przedmiots
  end
end

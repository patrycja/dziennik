class CreateUwagas < ActiveRecord::Migration
  def self.up
    create_table :uwagas do |t|
      t.text :tresc
      t.integer :nauczyciel_id
      t.integer :uczen_id

      t.timestamps
    end
  end

  def self.down
    drop_table :uwagas
  end
end

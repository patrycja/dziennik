class CreateKlasas < ActiveRecord::Migration
  def self.up
    create_table :klasas do |t|
      t.integer :liczba_uczniow
      t.string :nazwa

      t.timestamps
    end
  end

  def self.down
    drop_table :klasas
  end
end

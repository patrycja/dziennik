class CreateRodzicUczens < ActiveRecord::Migration
  def self.up
    create_table :rodzic_uczens do |t|
      t.integer :uczen_id
      t.integer :rodzic_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rodzic_uczens
  end
end

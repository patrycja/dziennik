class DeviseCreateRodzics < ActiveRecord::Migration
  def self.up
    create_table(:rodzics) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :rodzics, :email,                :unique => true
    add_index :rodzics, :reset_password_token, :unique => true
    # add_index :rodzics, :confirmation_token,   :unique => true
    # add_index :rodzics, :unlock_token,         :unique => true
    # add_index :rodzics, :authentication_token, :unique => true
  end

  def self.down
    drop_table :rodzics
  end
end

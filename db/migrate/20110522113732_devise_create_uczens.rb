class DeviseCreateUczens < ActiveRecord::Migration
  def self.up
    create_table(:uczens) do |t|
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

    add_index :uczens, :email,                :unique => true
    add_index :uczens, :reset_password_token, :unique => true
    # add_index :uczens, :confirmation_token,   :unique => true
    # add_index :uczens, :unlock_token,         :unique => true
    # add_index :uczens, :authentication_token, :unique => true
  end

  def self.down
    drop_table :uczens
  end
end

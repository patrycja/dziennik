class DeviseCreateNauczyciels < ActiveRecord::Migration
  def self.up
    create_table(:nauczyciels) do |t|
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

    add_index :nauczyciels, :email,                :unique => true
    add_index :nauczyciels, :reset_password_token, :unique => true
    # add_index :nauczyciels, :confirmation_token,   :unique => true
    # add_index :nauczyciels, :unlock_token,         :unique => true
    # add_index :nauczyciels, :authentication_token, :unique => true
  end

  def self.down
    drop_table :nauczyciels
  end
end

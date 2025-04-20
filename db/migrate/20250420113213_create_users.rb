class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username
      t.string :full_name
      t.string :password_digest

      # Security & session fields
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :remember_token
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      t.datetime :last_login_at
      t.integer :login_count, default: 0
      t.integer :failed_attempts, default: 0
      t.datetime :locked_at

      t.string :role, default: "user"
      t.string :timezone
      t.string :locale

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
    add_index :users, :confirmation_token, unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :role
    add_index :users, :last_login_at
  end
end

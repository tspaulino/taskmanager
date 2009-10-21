class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name, :limit => 40
      t.belongs_to :authorizable, :polymorphic => {:limit => 40}

      t.timestamps
    end
    add_index :roles, :name
    add_index :roles, [:authorizable_id, :authorizable_type], :name => "roles_polymorphic"
    
    create_table :roles_users, :id => false, :force => true do |t|
      t.belongs_to :user
      t.belongs_to :role
      t.timestamps
    end
    add_index :roles_users, :user_id
    add_index :roles_users, :role_id
  end

  def self.down
    remove_index :roles_users, :role_id
    remove_index :roles_users, :user_id
    drop_table :roles_users
    drop_table :roles
  end
end

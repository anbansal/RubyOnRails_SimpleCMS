class AlterColumnAdminUser < ActiveRecord::Migration[6.0]
  def up
    remove_column("admin_users","password_digest")
    add_column("admin_users","password_digest",:string)
  end
  def down
    remove_column("admin_users","password_digest")
    add_column("admin_users","password_digest",:string,:limit => 40)
  end
end

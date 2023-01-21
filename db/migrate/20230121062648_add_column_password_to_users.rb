class AddColumnPasswordToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password, :string #, :column_options
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

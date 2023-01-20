class AddColumnToDatum < ActiveRecord::Migration[7.0]
  def change
    add_column :Data, :user_id
    add_column :Data, :user_id, after: email
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

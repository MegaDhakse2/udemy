class AddColumnUserIdToDatum < ActiveRecord::Migration[7.0]
  def change
    add_column :data, :user_id, :int #, :column_options
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

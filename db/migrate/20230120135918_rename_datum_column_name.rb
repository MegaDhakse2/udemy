class RenameDatumColumnName < ActiveRecord::Migration[7.0]
  def change
    add_column :Data, :user_id
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

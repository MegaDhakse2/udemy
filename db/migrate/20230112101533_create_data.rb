class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps
      remove_column :Data, :password_digest
    end
  end
end

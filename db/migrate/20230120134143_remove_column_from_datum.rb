class RemoveColumnFromDatum < ActiveRecord::Migration[7.0]
  def change
    remove_column :Data, :password_digest
  end
end

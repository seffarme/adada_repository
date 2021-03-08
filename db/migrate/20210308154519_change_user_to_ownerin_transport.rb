class ChangeUserToOwnerinTransport < ActiveRecord::Migration[6.0]
  def change
    rename_column :transports, :user_id, :owner_id
  end
end

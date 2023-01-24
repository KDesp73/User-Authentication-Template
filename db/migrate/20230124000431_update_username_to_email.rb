class UpdateUsernameToEmail < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :username, from: nil, to: "username"
  end
end

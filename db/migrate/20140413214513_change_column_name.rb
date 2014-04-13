class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :messages, :sender_userid, :user_id
  end
end

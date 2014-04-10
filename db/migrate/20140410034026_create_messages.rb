class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_userid
      t.integer :receiver_userid
      t.text :message
    end
  end
end

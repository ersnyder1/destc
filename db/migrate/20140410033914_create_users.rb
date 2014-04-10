class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :expert
      t.integer :admin
      t.string :expertcity
      t.string :gender
      t.integer :age
      t.text :bio
      t.string :pictureurl
      t.string :phone
    end
  end
end

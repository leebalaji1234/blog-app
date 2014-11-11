class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name , :limit => 200, :null=> false 
      t.string :email, :limit => 200, :null=> false 
      t.string :password, :null=> false 

      t.timestamps
    end
  end
end

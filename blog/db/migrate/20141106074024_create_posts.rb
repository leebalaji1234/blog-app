class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title , :limit => 200, :null=> false 
      t.text :description
      t.references :user
      t.timestamps
    end
  end
end

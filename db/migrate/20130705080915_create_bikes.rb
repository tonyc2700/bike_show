class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :title
      t.text :body
      
      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :username
      t.string :content
      t.datetime :time

      t.timestamps
    end
  end
end

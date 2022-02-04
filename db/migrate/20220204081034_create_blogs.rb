class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :shorturl
      t.text :description
      t.integer :user_id
      t.string :file

      t.timestamps
    end
  end
end

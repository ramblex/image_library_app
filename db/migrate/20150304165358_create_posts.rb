class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :image_library_upload, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :image_library_uploads
  end
end

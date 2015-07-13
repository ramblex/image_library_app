class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.references :post, index: true, foreign_key: true
      t.references :image_library_upload, index: true, foreign_key: true
      t.integer :position, default: 0

      t.timestamps null: false
    end
  end
end

class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :user
      t.references :article
      t.text       :thought

      t.timestamps
    end
    add_index :bookmarks, :user_id
    add_index :bookmarks, :article_id
  end
end

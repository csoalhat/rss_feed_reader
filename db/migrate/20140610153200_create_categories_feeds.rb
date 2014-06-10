class CreateCategoriesFeeds < ActiveRecord::Migration
  def change
    create_table :categories_feeds, id: false do |t|
      t.integer :category_id, index: true
      t.integer :feed_id, index: true
    end
  end
end

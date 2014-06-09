class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text       :bio
      t.string     :city
      t.string     :image
      t.references :user

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end

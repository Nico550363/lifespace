class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.bigint "user_id"
      t.bigint "page_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id", "page_id"], name: "index_favorites_on_user_id_and_page_id", unique: true
    end
  end
end

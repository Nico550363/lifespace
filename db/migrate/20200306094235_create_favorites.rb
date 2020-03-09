class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :page
      t.references :user
      t.timestamps
    end
  end
end

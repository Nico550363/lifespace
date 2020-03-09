class AddColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :favorites_count, :integer
  end
end

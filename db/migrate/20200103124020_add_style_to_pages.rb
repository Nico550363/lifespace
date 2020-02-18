class AddStyleToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :style, :text
  end
end

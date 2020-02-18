class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string      :name
      t.text        :style
      t.text        :text
      t.string      :image
      t.timestamps null: true
    end
  end
end

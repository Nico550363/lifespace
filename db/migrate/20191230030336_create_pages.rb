class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string      :name, null: false
      t.text        :style, null: false
      t.text        :text, null: true
      t.string      :image, null: false
      t.timestamps null: true
    end
  end
end

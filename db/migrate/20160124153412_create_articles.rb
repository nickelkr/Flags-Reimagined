class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :city_id
      t.references :city, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

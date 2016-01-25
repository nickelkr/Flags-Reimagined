class AddPictureColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :picture, :file
  end
end

class AddSlugToMediaNewsPresses < ActiveRecord::Migration
  def change
    add_column :refinery_media_news_presses, :slug, :string
    add_index :refinery_media_news_presses, :slug
  end
end

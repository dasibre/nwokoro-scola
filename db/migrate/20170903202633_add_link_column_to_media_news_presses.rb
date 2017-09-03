class AddLinkColumnToMediaNewsPresses < ActiveRecord::Migration
  def change
    add_column :refinery_media_news_presses, :link, :string
  end
end

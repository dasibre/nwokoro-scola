# This migration comes from refinery_media_news_presses (originally 2)
class CreateMediaNewsPressesSections < ActiveRecord::Migration

  def up
    create_table :refinery_media_news_presses_sections do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-media_news_presses"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/media_news_presses/sections"})
    end

    drop_table :refinery_media_news_presses_sections

  end

end

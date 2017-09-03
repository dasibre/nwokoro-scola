# This migration comes from refinery_media_news_presses (originally 1)
class CreateMediaNewsPressesMediaNewsPresses < ActiveRecord::Migration

  def up
    create_table :refinery_media_news_presses do |t|
      t.references :section_id
      t.string :title
      t.datetime :date
      t.integer :photo_id
      t.text :blurb
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-media_news_presses"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/media_news_presses/media_news_presses"})
    end

    drop_table :refinery_media_news_presses

  end

end

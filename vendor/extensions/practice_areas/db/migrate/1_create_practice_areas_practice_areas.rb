class CreatePracticeAreasPracticeAreas < ActiveRecord::Migration

  def up
    create_table :refinery_practice_areas do |t|
      t.string :name
      t.text :blurb
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-practice_areas"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/practice_areas/practice_areas"})
    end

    drop_table :refinery_practice_areas

  end

end

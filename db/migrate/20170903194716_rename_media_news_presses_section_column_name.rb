class RenameMediaNewsPressesSectionColumnName < ActiveRecord::Migration
  def change
    rename_column :refinery_media_news_presses, :section_id_id, :section_id
  end
end

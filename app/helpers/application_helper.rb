module ApplicationHelper
  def item_link(item)
    if item.section.name === 'press'
      link_to item.title.truncate(35), refinery.media_news_presses_media_news_press_path(item)
    else
      link_to item.title.truncate(35), item.link
    end
  end
end

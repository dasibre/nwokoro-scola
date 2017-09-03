module Refinery
  module MediaNewsPresses
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::MediaNewsPresses

      engine_name :refinery_media_news_presses

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "sections"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.media_news_presses_admin_sections_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/media_news_presses/sections(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Sections)
      end
    end
  end
end

module Refinery
  module MediaNewsPresses
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::MediaNewsPresses

      engine_name :refinery_media_news_presses

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "media_news_presses"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.media_news_presses_admin_media_news_presses_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::MediaNewsPresses)
      end
    end
  end
end

module Refinery
  module PracticeAreas
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::PracticeAreas

      engine_name :refinery_practice_areas

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "practice_areas"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.practice_areas_admin_practice_areas_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::PracticeAreas)
      end
    end
  end
end

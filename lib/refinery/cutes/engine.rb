module Refinery
  module Cutes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Cutes

      engine_name :refinery_cutes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "cutes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.cutes_admin_cutes_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Cutes)
      end
    end
  end
end

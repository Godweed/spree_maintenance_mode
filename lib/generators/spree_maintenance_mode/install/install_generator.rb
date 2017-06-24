module SpreeMaintenanceMode
  module Generators
    class InstallGenerator < Rails::Generators::Base

      class_option :auto_run_migrations, type: :boolean, default: false

      def add_migrations
#        run 'bundle exec rake railties:install:migrations FROM=spree_maintenance_mode'
        copy_maintenance_mode_view
      end

      def copy_maintenance_mode_view
        FileUtils.cp(::SpreeMaintenanceMode::Engine.root.join('public', 'maintenance_mode.html'), Rails.root.join('public'))
      end

    end
  end
end

module Spree
  module Admin
    class MaintenanceModesController < Spree::Admin::BaseController

      def update
        Spree::Config[:maintenance_mode] = params[:maintenance_mode][:mode]
        redirect_to action: :show
      end

    end
  end
end

module Spree
  AppConfiguration.class_eval do
    preference :maintenance_mode, :boolean, default: false
  end
end

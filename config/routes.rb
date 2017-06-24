Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
  resource :maintenance_mode, only: [:update, :show]
end
end

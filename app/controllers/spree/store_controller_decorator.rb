Spree::StoreController.class_eval do
  before_filter :maintenance_mode

  def maintenance_mode
    if Spree::Config[:maintenance_mode]
      unless spree_current_user.admin?
        render file: "public/maintenance_mode.html", layout: false, status: 503
        return
      else
        render partial: "shared/maintenance_mode"
      end
    end
  end
end

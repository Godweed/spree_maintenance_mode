Spree::StoreController.class_eval do
  before_filter :maintenance_mode

  def maintenance_mode
    render file: "public/maintenance_mode.html", layout: false, status: 503 if Spree::Config[:maintenance_mode]
    return
  end
end

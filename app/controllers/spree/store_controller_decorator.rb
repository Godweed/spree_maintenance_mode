Spree::StoreController.class_eval do
  before_filter :maintenance_mode

  def maintenance_mode
    if Spree::Config[:maintenance_mode] == true

      if spree_current_user
        if spree_current_user.admin?
          Deface::Override.new(:virtual_path => 'spree/shared/_header',
        :name => 'Trying to replace the header',
        :insert_before => 'div#spree-header',
        :text => '
                 <div class="alert alert-warning">
                <p> Maintenance Mode</p>
              </div>
               '
                 )
        else
          render file: "public/maintenance_mode.html", layout: false, status: 503
        end
      else
        render file: "public/maintenance_mode.html", layout: false, status: 503
      end
    end
  end
end

module ComfySolidusAuth
  module Authentication
    def authenticate
      unless current_spree_user
        store_location_for(:spree_user, request.url)
        redirect_to spree.login_path, flash: {
                      error: "Please sign in to access the CMS."}
      end
    end
  end

  module Authorization
    def authorize
      unless current_spree_user.has_spree_role?(:admin)
        redirect_to spree.root_path, flash: {
                      error: "You do not have permission to access the CMS."}
      end
    end
  end
end

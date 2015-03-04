class Admin::AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin!

    private

    def ensure_admin!
        unless current_user.admin?
            flash[:notice] = 'You do not have administrative priveleges'
            sign_out current_user
            redirect_to root_path
            return false
        end
    end
end

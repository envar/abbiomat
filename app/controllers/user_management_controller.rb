class UserManagementController < AdminController

    def index
        @users = User.all()
        render "admin/users/index"
    end
end

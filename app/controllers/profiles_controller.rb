class ProfilesController < ApplicationController
    before_action :require_user_logged_in
    
    def edit
    end

    def update_password
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password updated"
        else     
            render :edit
        end
    end

    def update_username
        if Current.user.update(username_params)
            redirect_to root_path, notice: "Username set"
        else     
            render :edit
        end
    end

    def delete_account
        Current.user.destroy
        redirect_to root_path, alert: "Account deleted"
    end

    private 
    
    def password_params
        return params.require(:user).permit(:password, :password_confirmation)
    end

    private

    def username_params
        return params.require(:user).permit(:username)
    end

end
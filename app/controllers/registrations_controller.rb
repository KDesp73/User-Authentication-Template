class RegistrationsController < ApplicationController
    def new
        @user = User.new #instance variable so it's visible in views
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to root_path, notice: "Account created successfully"
        else
            render :new
        end
            
    end

    private

    def user_params
        params.require(:user).permit(:user, :password, :password_confirmation)
    end

end
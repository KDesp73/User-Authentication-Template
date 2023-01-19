class MainController < ApplicationController
    def index
        flash.now[:notice] = "Logged in successfully"
        flash[:alert] = "Invalid e-mail or password"
    end
end

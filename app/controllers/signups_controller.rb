class SignupsController < ApplicationController
    def index
        @signup = Signup.new
    end

    def create
        @signup = Signup.new(signup_params)
        if @signup.save
            redirect_to '/thanks'
        else
            render 'index'
        end
    end

    private
    def signup_params
        params.require(:signup).permit(:email)
    end
end

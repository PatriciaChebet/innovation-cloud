class SignupsController < ApplicationController
    def index
        @signup = Signup.new
    end
end

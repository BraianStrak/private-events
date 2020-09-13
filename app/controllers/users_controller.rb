class UsersController < ApplicationController
    def new

    end

    def create
        #the below worked, meaning this controller is actually connected to the user. good!
        redirect_to root_path
    end

    def show
        
    end
end

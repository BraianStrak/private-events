class UsersController < ApplicationController
    def new
        @event = current_user.created_events.build
    end

    def create
        #the below worked, meaning this controller is actually connected to the user. good!
        redirect_to root_path
    end

    def show
        if user_signed_in? 
            @created_events = current_user.created_events
        end
    end
end

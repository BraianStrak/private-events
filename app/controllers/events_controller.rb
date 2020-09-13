class EventsController < ApplicationController
    def new
        #making a new event
        @event = current_user.created_events.build
    end

    def index
        #a view of all events 
    end

    def create
        #redirect to event index or the user created events, idk. 
    end
end

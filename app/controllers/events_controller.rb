class EventsController < ApplicationController
    def new
        #making a new event
        @event = current_user.created_events.build
    end

    def index
        #a view of all events 
        @events = Event.all
    end

    def create
        #redirect to event index or the user created events, idk. 
        @event = current_user.created_events.build(event_params)
        if @event.save
          #current_user.attended_events << @event
          redirect_to root_path #redirects to the events created by the user ONLY
        else
          flash.now[:danger] = @event.errors.full_messages
          render :new
        end
    end

    private
    def event_params
        params.require(:event).permit(:title, :body, :date)
    end
end

class EventsController < ApplicationController
  # GET /events
  def index
    @events = Event.all
    render json:@events
  end

end

class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
  end

  #def create
   # @event = Event.new(params.require(:event).permit(:name, :ip_address, :eventtime))
   # @event.save
  #end
end

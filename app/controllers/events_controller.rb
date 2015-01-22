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

  #def create
   # @event = Event.new(params.require(:event).permit(:name, :property_1, :property_2))
   # @event.save
  #end

end

class Api::V1::EventsController

  respond_to :json

  def create
    @event = Event.new(params.require(:event).permit(:name, :property_1, :property_2))

    #append on the event information from  the request
    
    if @event.save
      # give a success message, respond with the event created
      flash[:notice] = 'Event was successfully saved.'
      # respond_with
      respond_with @event  
    else
      # give an error message on why save failed
      flash[:notice] = 'Error has occured.'
      # @event.errors
      respond_with @event.errors
      # render :json
    end      
  end
end
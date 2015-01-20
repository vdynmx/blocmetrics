class Api::V1::EventsController

  respond_to :json

  def create
    @event = Event.new(params.require(:event).permit(:name, :property_1, :property_2))

    #append on the event information from  the request
    
    if @event.save
      # give a success message, respond with the event created
      # respond_with  
    else
      # give an error message on why save failed
      # @event.errors
      # render :json
    end      
  end
end
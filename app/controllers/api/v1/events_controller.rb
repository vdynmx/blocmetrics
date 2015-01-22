class Api::V1::EventsController

  respond_to :json

  def create
    @event = Event.new(event_params)
    
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

  def update
    @event.update(event_params)

    if @event.save
      flash[:notice] = 'Event was updated.'
      respond_with @event
    else
      flash[:notice] = 'Event was no updated.'
      respond_with @event.errors
    end
  end

  def destroy
    @event.destroy
    respond_with @event
  end

  private

  def event_params
    params.require(:event).permit(:name, :property_1, :property_2)
  end

  def error(status, message = 'Error has occured')
    response = { response_type: "Error", message }
    render json: response.to_json, status: status
  end

  def permission_denied_error
    error(403, 'Permission Denied!')
  end


end
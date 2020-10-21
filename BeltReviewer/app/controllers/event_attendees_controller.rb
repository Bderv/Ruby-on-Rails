class EventAttendeesController < ApplicationController
  def create
    @user = current_user
    @event = Event.find(params[:event_id])
    if @user.events_attending.exists?(params[:event_id])
      flash[:error] = 'You already attending this!'
    else  
      @user.events_attending << @event
    end
    redirect_to events_path
  end

  def destroy
    @user = User.find(session[:id])
    @event_attendee = EventAttendee.find_by(user: current_user, event: Event.find(params[:event_id]))
    if @event_attendee.user == @user
      @event_attendee.destroy 
    end
    redirect_to events_path
  end
end

class EventsController < ApplicationController
  def index
    @user = current_user
    @events = Event.all
  end

  def create
    @user = User.find(session[:id])
    @event = Event.new(event_params)
    @event.user = @user
    if @event.save
    redirect_to events_path
    else
    flash[:error]  = @event.errors.full_messages
    redirect_to events_path
    end
  end

  def show
    @user = User.find(session[:id])
    @event = Event.find(params[:id])
    @comments = Comment.all
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(session[:id])
    @event = Event.find(params[:id])
    if @event.user == @user
      @event.destroy
    end
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :city, :state)
  end

end

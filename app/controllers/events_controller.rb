class EventsController < ApplicationController
  before_action(:find_event, {only: [:show, :edit, :update, :destroy] })

  def index
    @events = Event.all
  end

  def show
    render :show
  end

  def new
    @event = Event.new
    render :new
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      flash[:notice] = 'Successfully added event.'
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    render :edit
  end

  def update
    if @event.update(event_params)
      flash[:notice] = 'Successfully updated event.'
      redirect_to(@event)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    flash[:notice] = "Successfully deleted event."
    redirect_to events_path
  end


  private

  def event_params
    params.require(:event).permit(:name, :date, :start_time, :end_time)
  end

  def find_event
    @event = Event.find(params[:id])
  end


end

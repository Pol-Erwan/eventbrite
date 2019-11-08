class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index

    @event = Event.all

  end

  def show

    @event = Event.find(params[:id])

  end

  def new

  end

  def create
		@event=Event.new(title: params[:title],price:params[:price],description:params[:description],administrator:current_user.first_name,location: params[:location],start_date:params[:start_date],duration:params[:duration])
		if @event.save
			redirect_to event_path(@event.id)
		else
			redirect_to new_event_path
		end
  end
end

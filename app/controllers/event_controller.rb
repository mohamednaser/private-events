class EventController < ApplicationController
  def new
  end

  def create
  end

  def index
    @events = Event.all
  
  end

  def destroy
  end
end

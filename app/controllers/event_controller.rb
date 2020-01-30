# frozen_string_literal: true

# main event applciation
class EventController < ApplicationController
  before_action :check_login

  # get url
  def new
    @event = Event.new
  end

  # we will used it for post parmaters
  def create
    @curent_user.events.build(event_params).save
    redirect_to events_path
  end

  def index
    @events = Event.all
  end

  def destroy; end

  private

  def event_params
    params.require(:event).permit(:title, :description)
  end

  def check_login
    curent_user
    redirect_to login_path unless logged
  end
end

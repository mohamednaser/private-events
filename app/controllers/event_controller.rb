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
    @curent_user.events_created.build(event_params).save
    redirect_to events_path
  end

  def index
    @events = Event.all
  end

  def destroy; end

  def show
    @event = Event.find(params[:id])
  end

  # function to attend event
  def attend
    @curent_user.eventattendanced.build(event_id: params[:id]).save

    redirect_to profile_path
  end

  def cancel_attend
    @curent_user.eventattendanced.delete(id: params[:id]).save

    redirect_to profile_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description)
  end

  def check_login
    curent_user
    redirect_to login_path unless logged
  end
end

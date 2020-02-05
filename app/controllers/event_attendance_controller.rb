class EventAttendanceController < ApplicationController
  def create
    EventAttendance.save(event_attendance_params)
  end

  def new; end

  def destroy
    EventAttendance.find(params[:id]).delete
  end

  private

  def event_attendance_params
    params.require(:event_attendance).permit(:user_id, :event_id)
  end
end

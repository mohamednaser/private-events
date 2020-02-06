module EventAttendanceHelper
  def event_attendance_count(event)
    event.EventAttendance.count
  end

  def event_date_format(event)
    event.created_at.to_date
  end

  def id_to_string(event)
    event.id.to_s
  end
end

require 'test_helper'

class EventAttendanceControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get event_attendance_create_url
    assert_response :success
  end

  test 'should get new' do
    get event_attendance_new_url
    assert_response :success
  end

  test 'should get destroy' do
    get event_attendance_destroy_url
    assert_response :success
  end
end

require 'rails_helper'

describe 'Check events validations ' do
  before :each do
    @event_attend_obj = EventAttendance.new
  end

  it 'Check save without user id and event id ' do
    expect(@event_attend_obj.save).not_to eql(true)
  end

  it 'Check save without user id ' do
    User.create(name: 'mohmaed', email: 'test@test.com')

    Event.create(title: 'text event', description: 'test description', user_id: User.last.id)

    @event_attend_obj.event_id = Event.last.id
    expect(@event_attend_obj.save).not_to eql(true)
  end

  it 'Check save without event id ' do
    User.create(name: 'test name', email: 'test@mail.com')
    @event_attend_obj.user_id = User.last.id
    expect(@event_attend_obj.save).not_to eql(true)
  end
end

require 'rails_helper'

describe 'Check events validations ' do
  before :each do
    @curent_event = Event.new
  end

  it 'Check Empty Event Title ' do
    expect(@curent_event.save).not_to eql(true)
  end

  it 'Check Name Length ' do
    @curent_event.title = 'asd' * 55
    expect(@curent_event.save).not_to eql(true)
  end

  it 'Check save event without user id ' do
    @curent_event.title = 'check title '
    expect(@curent_event.save).to eql(false)
  end

  it 'Save Valid Event Data ' do
    User.create(name: 'ahmed', email: 'test@test.com')

    @curent_event.title = 'test title '
    @curent_event.user_id = User.last.id

    expect(@curent_event.save).to eql(true)
  end
end

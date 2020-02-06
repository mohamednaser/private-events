require 'rails_helper'

RSpec.describe 'Check User Validations', type: :model do
  before :each do
    @user_obj = User.new
  end

  it 'Check Empty Email ' do
    expect(@user_obj.save).not_to eql(true)
  end

  it 'Not accept invalid mail' do
    @user_obj.email = 'fakemail'

    expect(@user_obj.save).to eql(false)
  end

  it 'Accept correct email ' do
    @user_obj.name = 'test name '
    @user_obj.email = 'test@test.com'

    expect(@user_obj.save).to eql(true)
  end

  it 'Check empty name ' do
    @user_obj.email = 'test@test.com'

    expect(@user_obj.save).not_to eql(true)
  end

  it 'Check valid name ' do
    @user_obj.name = 'test name '
    @user_obj.email = 'test@tes.com'

    expect(@user_obj.save).to eql(true)
  end
end

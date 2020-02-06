require 'rails_helper'

RSpec.describe 'Test Login Componant ' do
  before :all do
    @curent_user = User.create(name: 'mohamed', email: 'test@test.com')
  end

  it 'valid login ' do
    visit login_path

    fill_in 'id', with: @curent_user.id
    click_on 'login'

    expect(page).to have_content('Welcome ' << @curent_user.name)
  end

  it 'invalid login ' do
    visit login_path

    fill_in 'id', with: User.last.id + 1
    click_on 'login'
    expect(page).to have_content('There Is No User With This ID')
  end
end

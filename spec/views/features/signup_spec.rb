require 'rails_helper'

RSpec.describe 'Test Registeration Componant ' do
  before :all do
    @curent_user = User.create(name: 'mohamed', email: 'test@test.com')
  end

  it 'valid registeration ' do
    visit signup_path

    fill_in 'name', with: 'mohamed naser'
    fill_in "email",	with: "test@tes.com" 
    click_on 'register'

    expect(page).to have_content('signup success your id is ')
  end

  it 'invalid login ' do
    visit login_path

    fill_in 'id', with: User.last.id + 1
    click_on 'login'
    expect(page).to have_content('There Is No User With This ID')
  end

  it 'valid login ' do
    visit login_path

    fill_in 'id', with: User.last.id
    click_on 'login'
    expect(page).to have_content('Welcome ' << @curent_user.name)
  end
end

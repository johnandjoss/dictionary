require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('path for index page', {:type => :feature}) do
  it('shows the list of words and a link to add another word') do
    visit('/')
    expect(page).to have_content('Welcome to the Dictionary')
  end
end

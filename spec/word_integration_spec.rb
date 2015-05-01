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

describe('path for words/new', {:type => :feature}) do
    it('allows user to input a new word') do
      visit('/words/new')
      fill_in('name', :with => 'yard')
      click_button('Add Word')
      expect(page).to have_content('Your item has been')
    end
  end

  describe('path for adding/showing all definitions for a word', {:type => :feature}) do
      it('allows user to see current definitions and links to') do
        visit('/words/1')
        expect(page).to have_content('Here are all')
    end
    end

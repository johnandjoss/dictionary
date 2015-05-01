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

describe('path for showing all definitions for a word', {:type => :feature}) do
  it('allows user to see current definitions and links to') do
    visit('/words/1')
    expect(page).to have_content('Here are all')
  end
end

describe('path to get to form to add new definitions for a word', {:type => :feature}) do
  it('allows user to click link to bring up form to add new definitions') do
    visit('/words/1')
    click_link('Add a new definition')
    expect(page).to have_content('Add a')
  end
end

describe('path for adding new definitions for a word', {:type => :feature}) do
  it('allows user input another set of definitions for a specific word') do
    visit('/words/1/definitions/new')
    fill_in('def_one', :with => 'tall frog')
    fill_in('def_two', :with => 'big toad')
    click_button('Add Definition')
    expect(page).to have_content('Your item has been')
  end
end

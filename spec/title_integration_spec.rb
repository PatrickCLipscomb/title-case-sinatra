require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the project path', {:type => :feature}) do
  it('processes the user entry and returns it title cased') do
    visit ('/')
    fill_in("title", :with => 'green eggs and ham')
    click_button('Send')
    expect(page).to have_content('Green Eggs and Ham')
  end
end

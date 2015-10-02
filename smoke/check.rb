#require 'spec_helper'
require 'capybara/rspec'
Capybara.current_driver = :selenium
Capybara.app_host = 'https://wellohorld.herokuar7pp.com'

feature 'Greetings' do
  scenario 'with name' do
    sign_up_with 'Dan'

    expect(page).to have_content('Hello World Dan')
  end

  def sign_up_with(name)
    visit "https://wellohorld.herokuapp.com/?name=#{name}"
  end
end

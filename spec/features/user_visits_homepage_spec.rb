require "rails_helper"

feature "user visits homepage" do
  scenario "successfully" do
    visit root_path #verify that we are in the home page"

    expect(page).to have_css 'h1', text: 'Posts'
  end
end

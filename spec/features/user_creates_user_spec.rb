require "rails_helper"

feature "User creates user" do

  scenario "successfully" do
    visit root_path
    click_on "New User"
    fill_in "First name", with: "Pauline"
    fill_in "Last name", with: "Wade"
    click_on "Create User"

    expect(page).to have_css 'p', text: 'Pauline'
  end

  scenario "successfully" do
    visit root_path
    click_on "New User"
    fill_in "First name", with: "Pauline"
    fill_in "Last name", with: "Wade"
    click_on "Create User"

    expect(page).to have_css 'p', text: 'Pauline'
  end

  scenario "unsuccessfully" do
    visit root_path
    click_on "New User"
    fill_in "First name", with: "Pauline"
    fill_in "Last name", with: nil
    click_on "Create User"

    expect(page).to have_css 'h2', text: 'prohibited'
  end
end

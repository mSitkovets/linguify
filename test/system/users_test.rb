require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @username = "John #{rand(1000)}"
    @email = "mario#{rand(1000)}@gmail.com"
    @password = "skfafsas#{rand(1000)}"
    visit login_url
    fill_in 'username', with: 'dave'
    fill_in 'password', with: 'secret'
    click_on 'Login'  
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Email", with: @email
    fill_in "Password", with: @password
    fill_in "Confirm", with: @password
    fill_in "Username", with: @username
    click_on "Create User"

    assert_text "User #{@username} was successfully created." 
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @email
    fill_in "Password", with: @password
    fill_in "Confirm", with: @password
    fill_in "Username", with: @username
    click_on "Update User"

    assert_text "User #{@username} was successfully updated."
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Please Log In"
  end
end

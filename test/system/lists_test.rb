require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
    visit login_url
    fill_in 'username', with: 'dave'
    fill_in 'password', with: 'secret'
    click_on 'Login'  
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "Lists"
  end

  test "creating a List" do
    visit lists_url
    click_on "New List"

    click_on "Create List"

    assert_text "List was successfully created"
  end

  test "updating a List" do
    visit lists_url
    click_on "Edit", match: :first

    click_on "Update List"

    assert_text "List was successfully updated."
  end

  test "destroying a List" do
    visit lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Your list is currently empty."
  end
end

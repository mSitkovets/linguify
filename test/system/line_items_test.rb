require "application_system_test_case"

class LineItemsTest < ApplicationSystemTestCase
  setup do
    @line_item = line_items(:one)
    visit login_url
    fill_in 'username', with: 'dave'
    fill_in 'password', with: 'secret'
    click_on 'Login'    
  end

  test "visiting the index" do
    visit line_items_url
    assert_selector "h1", text: "Line Items"
  end

  test "creating a Line item" do
    visit line_items_url
    click_on "New Line Item"

    fill_in "List", with: @line_item.list_id
    fill_in "Quiz", with: @line_item.quiz.title
    click_on "Create Line item"

    assert_text "Line item was successfully created"
  end

  test "updating a Line item" do
    visit line_items_url
    click_on "Edit", match: :first

    fill_in "List", with: @line_item.list_id
    fill_in "Quiz", with: @line_item.quiz_id
    click_on "Update Line item"

    assert_text "Quiz was successfully updated."
  end

  test "destroying a Line item" do
    visit line_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quiz was successfully destroyed."
  end
end

require "application_system_test_case"

class FriendshipsTest < ApplicationSystemTestCase
  setup do
    @friendship = friendships(:two )
    visit login_url
    fill_in 'username', with: 'dave'
    fill_in 'password', with: 'secret'
    click_on 'Login'    
  end

  test "visiting the index" do
    visit friendships_url
    assert_selector "h1", text: "Friendships"
  end

  test "creating a Friendship" do
    visit friendships_url
    click_on "New Friendship"

    fill_in "Friend", with: @friendship.friend_id
    fill_in "User", with: @friendship.user_id
    click_on "Create Friendship"

    assert_text "Friendship was successfully created"
  end

  test "destroying a Friendship" do
    visit friendships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friendship was successfully destroyed"
  end
end

require 'test_helper'

class FriendshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendship = friendships(:one)
    @user_one = users(:one)
    @user_two = users(:two)
  end

  test "should get index" do
    get friendships_url
    assert_response :success
  end

  test "should get new" do
    get new_friendship_url
    assert_response :success
  end

  test "should create friendship" do
    #Friendship.delete_all
    assert_difference('Friendship.count') do
      post friendships_url, params: { friendship: { friend_id: @user_one.id, user_id: @user_two.id } }
    end

    assert_redirected_to friendship_url(Friendship.last)
  end

  test "should show friendship" do
    get friendship_url(@friendship)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendship_url(@friendship)
    assert_response :success
  end

  test "should destroy friendship" do
    assert_difference('Friendship.count', -1) do
      delete friendship_url(@friendship)
    end

    assert_redirected_to friendships_url
  end
end

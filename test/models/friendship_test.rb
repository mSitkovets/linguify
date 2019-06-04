require 'test_helper'

class FriendshipTest < ActiveSupport::TestCase
  test "user attributes must not be empty" do
    friendship = Friendship.new
    assert friendship.invalid?
    assert friendship.errors[:user].any?
    assert friendship.errors[:friend].any?
  end

  test 'should have unique friend' do
    user_1 = User.create(:username => 'maria707', :email => 'mariasitko@gmail.com', :password => 'hello123')
    user_2 = User.create(:username => 'ar707', :email => 'matko@gmail.com', :password => 'hello123')
    friend_1 = Friendship.create(user: user_1, friend: user_2)
    assert friend_1.valid?
    
    friend_2 = Friendship.create(user: user_1, friend: user_2)
    assert friend_2.invalid?
  end
end

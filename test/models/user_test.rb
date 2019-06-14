require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  test "user attributes must not be empty" do
    user = User.new
    assert user.invalid?
    assert user.errors[:username].any?
    assert user.errors[:password].any?
    assert user.errors[:email].any?
  end

  test "user is not valid without a unique username" do
    user = User.new(username: users(:one).username, password: "hello34", email: "aram@gmail.com")
    assert user.invalid?
    assert_equal ["has already been taken"], user.errors[:username] 
  end

  test "user is not valid without a unique email - il8n" do
    user = User.new(username: "kewl12345", password: "hello34", email: users(:two).email)
    assert user.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], user.errors[:email]
  end

  def new_user(user_email)
    User.new(username: "ar234", password: "rackets66", email: user_email)
  end

  test "user email" do
    ok = %w{ aram@gmail.com aram@yahoo.com aram@hotmail.com aram@live.com aram@gmail.ca aram@yahoo.ca aram@hotmail.ca aram@live.ca ty@mariasitkovets.ca}
    bad = %w{ aram4gmail.com aram%yahoo.com aram#live.com}

    ok.each do |user_email|
      assert new_user(user_email).valid?,
      "#{user_email} shouldn't be invalid"
    end

    bad.each do |user_email|
      assert new_user(user_email).invalid?,
      "#{user_email} shouldn't be valid"
    end
  end

  test "user username must be a maximum of 15 characters in length" do
    user = User.new(password: "rapport44", email: "acf@gmail.com")

    user.username = "great55777777777"
    assert user.invalid?
    assert_equal ["is too long (maximum is 15 characters)"],
      user.errors[:username]
    
    user.username = "coolio4"
    assert user.valid?
  end

  test "user password must have at least 6 characters and include one number and one letter" do
    user = User.new(username: "abcde4", email: "ra@gmail.com")

    user.password = "at"
    assert user.invalid?
    assert_equal ["must be at least 6 characters and include one number and one letter."],
      user.errors[:password]

    user.password = "23m"
    assert user.invalid?
    assert_equal ["must be at least 6 characters and include one number and one letter."],
      user.errors[:password]

    user.password = "23mmmmmmmmmmmmmmmmm"
    assert user.invalid?
    assert_equal ["must be at least 6 characters and include one number and one letter."],
      user.errors[:password]

    user.password = "heeeeey8"
    assert user.valid?
  end

end

require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      email: "test@example.com",
      password: "password123",
      password_confirmation: "password123"
    )
  end

  test "should be valid with valid email and password" do
    assert @user.valid?
  end

  test "should not be valid without email" do
    @user.email = ""
    assert_not @user.valid?
    assert_includes @user.errors[:email], "can't be blank"
  end

  test "should not be valid with short password" do
    @user.password = @user.password_confirmation = "123"
    assert_not @user.valid?
  end
end

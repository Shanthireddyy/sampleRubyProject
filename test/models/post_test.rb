require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Test Title", description: "Test Description")
  end

  test "should be valid with valid attributes" do
    assert @post.valid?
  end

  test "should not be valid without a title" do
    @post.title = nil
    assert_not @post.valid?
    assert_includes @post.errors[:title], "can't be blank"
  end

  test "should not be valid without a description" do
    @post.description = nil
    assert_not @post.valid?
    assert_includes @post.errors[:description], "can't be blank"
  end
end

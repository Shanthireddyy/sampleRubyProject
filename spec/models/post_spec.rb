require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with valid attributes" do
    post = Post.new(title: "My Title", description: "My Description")
    expect(post).to be_valid
  end

  it "is not valid without a title" do
    post = Post.new(description: "My Description")
    expect(post).to_not be_valid
  end

  it "is not valid without a description" do
    post = Post.new(title: "My Title")
    expect(post).to_not be_valid
  end
end
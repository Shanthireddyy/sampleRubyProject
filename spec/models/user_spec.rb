
require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a valid email and password" do
    user = User.new(email: "user@example.com", password: "password123")
    expect(user).to be_valid
  end

  it "is invalid without an email" do
    user = User.new(password: "password123")
    expect(user).to_not be_valid
  end

  it "is invalid without a password" do
    user = User.new(email: "user@example.com")
    expect(user).to_not be_valid
  end

  it "ensures email uniqueness" do
    User.create(email: "unique@example.com", password: "password")
    user = User.new(email: "unique@example.com", password: "password123")
    expect(user).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe Student, type: :model do
  it "is valid with all attributes" do
    student = Student.new(firstname: "John", lastname: "Doe", email: "john@example.com")
    expect(student).to be_valid
  end

  it "is invalid without firstname" do
    student = Student.new(lastname: "Doe", email: "john@example.com")
    expect(student).to_not be_valid
  end

  it "is invalid without lastname" do
    student = Student.new(firstname: "John", email: "john@example.com")
    expect(student).to_not be_valid
  end

  it "is invalid without email" do
    student = Student.new(firstname: "John", lastname: "Doe")
    expect(student).to_not be_valid
  end
end
require "test_helper"

class StudentTest < ActiveSupport::TestCase
   def setup
    @student = Student.new(
      firstname: "Shanthi",
      lastname: "Reddy",
      email: "shanthi@example.com"
    )
  end

  test "should be valid with valid attributes" do
    assert @student.valid?
  end

  test "should not be valid without firstname" do
    @student.firstname = nil
    assert_not @student.valid?
  end

  test "should not be valid without lastname" do
    @student.lastname = nil
    assert_not @student.valid?
  end

  test "should not be valid without email" do
    @student.email = nil
    assert_not @student.valid?
  end
end

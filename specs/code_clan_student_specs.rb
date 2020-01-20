require("minitest/autorun")
require("minitest/reporters")
require_relative('../code_clan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test
  def setup
  @student = CodeClanStudent.new("Michael", "E37", "Java")
  end
  def test_student_name
    assert_equal("Michael", @student.student_name)
  end
  def test_student_cohort
    assert_equal("E37", @student.cohort)
  end
  def test_new_student_name
    assert_equal("John", @student.new_student_name("John"))

  end
  def test_new_student_cohort
    assert_equal("G23", @student.new_student_cohort("G23"))
  end
  def test_talking
    assert_equal("I can talk!", @student.talking("I can talk!"))
  end
  def test_fav_lan
    # fav_lan("Ruby")
    # assert_equal("Ruby", )
    assert_equal("My favorite language is Java", @student.fav())
  end
end

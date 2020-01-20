require("minitest/autorun")
require("minitest/reporters")
require_relative("../team")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Unicorns",["John","Pablo","Juan"], "Rodrigez", 1)
    @team1 = Team.new("Pitbulls", ["Whoever", "aslkfdj", "Ilovepizza"], "Pikachu", 0)

  end
  def test_team_name
    assert_equal("Unicorns", @team.team_name)#team name is a method
  end
  def test_players
    assert_equal(["John","Pablo","Juan"], @team.players)#team name is a method
  end
  def test_trainer
    assert_equal("Rodrigez", @team.trainer)#team name is a method
  end
  def test_change_trainer_name
    assert_equal("Rogo", @team.change_trainer_name("Rogo"))#team name is a method
  end
  def test_add_player_to_team
    assert_equal(["John","Pablo","Juan","Chico"], @team.add_player_to_team("Chico"))
  end
  def test_check_for_player
    assert_equal(true, @team.check_for_player("Juan"))
  end
  def test_add_remove_points
    assert_equal(3, @team.add_remove_points(4, -2))
  end
end

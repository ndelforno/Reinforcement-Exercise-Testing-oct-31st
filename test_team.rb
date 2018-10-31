require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def test_to_hash
    team = Team.new('bender','student',['nick','daniel','luke'])

    expected = {
      team_name: 'bender',
      level: 'student',
      points: 0,
    }

    actual = team.to_hash

    assert_equal(expected,actual)

  end

end

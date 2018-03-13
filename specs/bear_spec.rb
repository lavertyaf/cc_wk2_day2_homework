require("minitest/autorun")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Mackerel")
    @fish3 = Fish.new("Cod")
    @fish4 = Fish.new("Tuna")
    fishes = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Amazon", fishes)
    @stomach = []
    @bear = Bear.new("Yogi")
  end

  def test_stomach_starts_with_no_fish()
    assert_equal(0, @bear.stomach_count())
  end

  def test_eat_a_fish
    @bear.eat_a_fish(@fish1)
    assert_equal(1, @bear.stomach_count)
  end

  def test_is_starving
    assert_equal(true, @bear.stomach_is_empty)
  end

  def test_hunt_for_fish
    result = @bear.bear_gets_fed
    assert_equal(1, result)
  end

end

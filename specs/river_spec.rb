require("minitest/autorun")
require_relative("../river")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Trout")
    fish2 = Fish.new("Mackerel")
    fish3 = Fish.new("Cod")
    fish4 = Fish.new("Tuna")
    fishes = [fish1, fish2, fish3, fish4]
    @river = River.new("Amazon", fishes)
  end

  def test_fish_count
    assert_equal(4, @river.fish_count)
  end

end

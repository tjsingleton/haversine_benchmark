require "test/unit"
require "./ruby_haversine.rb"
require "./inline_haversine.rb"

class HaversineTest < Test::Unit::TestCase

  def test_a_known_distance
    assert_equal(
      Haversine.distance(39.416454,-118.841204, 39.476181,-118.783931).round(10),
      5.14072636046753.round(10),
    )
  end

  def test_a_known_distance_inline
    assert_equal(
      HaversineInline.distance(39.416454,-118.841204, 39.476181,-118.783931).round(10),
      5.14072636046753.round(10)
    )
  end

end
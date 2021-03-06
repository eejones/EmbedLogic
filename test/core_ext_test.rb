require 'test_helper'

class CoreExtTest < Test::Unit::TestCase
  def test_to_embedcode_replaces_link
    assert_equal "http://www.youtube.com/embed/xVrJ8DxECbg?feature=player_detailpage", ("http://www.youtube.com/watch?v=xVrJ8DxECbg").embedded
  end
  def test_to_embedcode_vimeo_replaces link
    assert_equal "http://player.vimeo.com/video/25076865", ("http://vimeo.com/25076865").embedded
  end
end

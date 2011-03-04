require File.dirname(__FILE__) + '/test_helper'

class FontVariationDescriptionTest < Test::Unit::TestCase

  def test_compact
    assert_equal 'i7', FontVariationDescription.compact('font-style:italic;font-weight:bold;')
  end

  def test_expand
    assert_equal 'font-style:italic;font-weight:700;', FontVariationDescription.expand('i7')
  end

  def test_parse
    assert_equal({ "font-style" => 'italic', "font-weight" => '700' }, FontVariationDescription.parse('i7'))
  end

end

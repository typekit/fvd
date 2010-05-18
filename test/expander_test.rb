require File.dirname(__FILE__) + '/test_helper'

class ExpanderTest < Test::Unit::TestCase

  def setup
    @expander = FontVariationDescription::Expander.new
  end

  # See expand.yml for test cases.
  FontVariationDescription::Test.expand_tests.each_with_index do |(fontface, fvd, description), index|
    define_method "test_#{index}_#{description.gsub(/\W/, '')}" do
      assert_equal @expander.parse(fvd), fontface, description
    end
  end

end
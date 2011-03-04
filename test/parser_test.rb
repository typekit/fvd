require File.dirname(__FILE__) + '/test_helper'

class ExpanderTest < Test::Unit::TestCase

  def setup
    @expander = FontVariationDescription::Parser.new
  end

  # See expand.yml for test cases.
  FontVariationDescription::Test.parser_test.each_with_index do |(output, fvd, description), index|
    define_method "test_#{index}_#{description.gsub(/\W/, '')}" do
      assert_equal @expander.parse(fvd), output, description
    end
  end

end

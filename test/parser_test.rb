require File.dirname(__FILE__) + '/test_helper'

class ParserTest < Test::Unit::TestCase

  def setup
    @parser = FontVariationDescription::Parser.new
  end

  # See parser.yml for test cases.
  FontVariationDescription::Test.parser_test.each_with_index do |(output, fvd, description), index|
    define_method "test_#{index}_#{description.gsub(/\W/, '')}" do
      assert_equal @parser.parse(fvd), output, description
    end
  end

end

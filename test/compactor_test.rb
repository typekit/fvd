require File.dirname(__FILE__) + '/test_helper'

class CompatorTest < Test::Unit::TestCase

  def setup
    @compactor = FontVariationDescription::Compactor.new
  end

  # See compact.yml for test cases.
  FontVariationDescription::Test.compact_tests.each_with_index do |(fontface, fvd, description), index|
    define_method "test_#{index}_#{description.gsub(/\W/, '')}" do
      assert_equal fvd, @compactor.parse(fontface), description
    end
  end

end
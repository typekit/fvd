require File.dirname(__FILE__) + '/test_helper'

class ExpanderTest < Test::Unit::TestCase

  def setup
    @expander = FontVariationDescription::Expander.new
  end

  Data = YAML.load_file(File.dirname(__FILE__) + "/../expand.yml")

  Data['tests'].each_with_index do |test, index|
    description = test['description']
    fvd = test['fvd']
    fontface = test['fontface']

    define_method "test_#{index}_#{description.gsub(/\W/, '')}" do
      expected = fontface
      actual = @expander.parse(fvd)
      assert_equal actual, expected, description
    end
  end

end
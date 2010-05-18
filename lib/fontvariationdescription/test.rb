require 'yaml'

module FontVariationDescription
  module Test
    extend self

    def compact_tests
      data = YAML.load_file(File.dirname(__FILE__) + "/../../compact.yml")
      data['tests'].map { |test|
        [test['fontface'], test['fvd'], test['description']]
      }
    end

    def expand_tests
      data = YAML.load_file(File.dirname(__FILE__) + "/../../expand.yml")
      data['tests'].map { |test|
        [test['fontface'], test['fvd'], test['description']]
      }
    end

  end
end
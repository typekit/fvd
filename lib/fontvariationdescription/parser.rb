module FontVariationDescription
  class Parser

    def initialize(properties=PROPERTIES, values=VALUES)
      @properties = properties
      @values = values
    end

    def parse(input)
      return nil unless input && input.size == 2

      result = [nil, nil]

      @properties.each_with_index { |property, index|
        key = input[index, 1]
        values = @values[property]
        item = Item.new(index, property, values)
        item.expand(result, key, false)
      }

      result if result.all?
    end

  end
end

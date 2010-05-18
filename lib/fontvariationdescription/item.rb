module FontVariationDescription
  class Item

    def initialize(index, property, values)
      @index = index
      @property = property
      @values = values
    end

    def compact(output, value)
      match = @values.find { |v| value == v[1] }
      output[@index] = match[0] if match
    end

    def expand(output, value)
      match = @values.find { |v| value == v[0] }
      output[@index] = [@property, match[1]].join(':') if match
    end

  end
end
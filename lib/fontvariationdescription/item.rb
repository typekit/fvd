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

    def expand(output, value, include_property=true)
      match = @values.find { |v| value == v[0] }
      if include_property
        output[@index] = [@property, match[1]].join(':') if match
      else
        output[@index] = match[1] if match
      end
    end

  end
end

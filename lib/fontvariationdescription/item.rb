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

    def expand(output, value, join_property=true)
      match = @values.find { |v| value == v[0] }
      if join_property
        output[@index] = [@property, match[1]].join(':') if match
      else
        output[@index] = [@property, match[1]] if match
      end
    end

  end
end

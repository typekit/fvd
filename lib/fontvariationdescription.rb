require File.dirname(__FILE__) + '/fontvariationdescription/item'
require File.dirname(__FILE__) + '/fontvariationdescription/compactor'
require File.dirname(__FILE__) + '/fontvariationdescription/expander'

module FontVariationDescription
  VERSION = '0.9.0'

  PROPERTIES = [
    'font-style',
    'font-weight'
  ]

  VALUES = {
    'font-style' => [
      ['n', 'normal'],
      ['i', 'italic'],
      ['o', 'oblique']
    ],
    'font-weight' => [
      ['1', '100'],
      ['2', '200'],
      ['3', '300'],
      ['4', '400'],
      ['5', '500'],
      ['6', '600'],
      ['7', '700'],
      ['8', '800'],
      ['9', '900'],
      ['4', 'normal'],
      ['7', 'bold']
    ]
  }

  def self.compact(input)
    @compactor ||= Compactor.new
    @compactor.parse(input)
  end

  def self.expand(input)
    @expander ||= Expander.new
    @expander.parse(input)
  end

end
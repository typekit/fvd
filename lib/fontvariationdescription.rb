require 'fontvariationdescription/item'
require 'fontvariationdescription/compactor'
require 'fontvariationdescription/expander'
require 'fontvariationdescription/parser'

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

  # Public: Transform CSS @font-face descriptors into a Font Variation
  # Description.
  #
  # input - A String containing @font-face descriptors.
  #
  # Examples
  #
  #   FontVariationDescription.compact("font-style:italic;font-weight:bold")
  #   # => "i7"
  #
  # Returns the Font Variation Description String.
  def self.compact(input)
    @compactor ||= Compactor.new
    @compactor.parse(input)
  end

  # Public: Transform a Font Variation Description into CSS @font-face
  # descriptors.
  #
  # input - A Font Variation Description String.
  #
  # Examples
  #
  #   FontVariationDescription.expand("i7")
  #   # => "font-style:italic;font-weight:700"
  #
  # Returns the CSS @font-face descriptor String.
  def self.expand(input)
    @expander ||= Expander.new
    @expander.parse(input)
  end

  # Public: Transform a Font Variation Description into a List of its
  # parts.
  #
  # input - A Font Variation Description String.
  #
  # Examples
  #
  #   FontVariationDescription.parse("i7")
  #   # => { "font-style" => "italic", "font-weight" => "700"}
  #
  # Returns the a Hash of CSS properties and their values.
  def self.parse(input)
    @parser ||= Parser.new
    @parser.parse(input)
  end
end

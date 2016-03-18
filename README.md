# Font Variation Description

A way to unambiguously, compactly and clearly describe a set of
[@font-face](http://www.w3.org/TR/css3-fonts/) properties. This is implemented
as a simple string. For example.

    n4

With these two characters we can choose a font, or generate style and
weight information for an `@font-face` rule.

    font-style: normal;
    font-weight: normal;


## Properties

The order of properties is well defined. Currently:

    font-style
    font-weight

Forward compatibility is maintained by adding new properties to the end.
Possible additions:

    font-stretch
    font-variant


## Values

The possible values for each property are well defined, and a value is
required for each property. Values must be a single character. The Font
Variation Description value and its equivalent CSS value for each property are
as follows.

Each property must have a default value, but may have aliases for use when
generating a Font Variation Description. To maintain unambiguous output, there
must be no alias return values.

### [font-style](http://www.w3.org/TR/css3-fonts/#font-style0)

    n: normal  (default)
    i: italic
    o: oblique

### [font-weight](http://www.w3.org/TR/css3-fonts/#font-weight0)

    1: 100
    2: 200
    3: 300
    4: 400 (default, also recognized as 'normal')
    5: 500
    6: 600
    7: 700 (also recognized as 'bold')
    8: 800
    9: 900

### [font-stretch](http://www.w3.org/TR/css3-fonts/#font-stretch-prop)

    a: ultra-condensed
    b: extra-condensed
    c: condensed
    d: semi-condensed
    n: normal          (default)
    e: semi-expanded
    f: expanded
    g: extra-expanded
    h: ultra-expanded

### [font-variant](http://www.w3.org/TR/css3-fonts/#propdef-font-variant)

    n: normal
    c: small-caps


## Parsing Rules

See [compaction test suite](http://github.com/typekit/fvd/blob/master/compact.yml),
[expansion test suite](http://github.com/typekit/fvd/blob/master/expand.yml)
and [parser test suite](http://github.com/typekit/fvd/blob/master/parser.yml)
for a complete set of rules.


## Examples:

    (no properties)
    => n4

    font-style: italic;
    => i4

    font-weight: normal;
    => n4

    font-weight: bold;
    => n7

    font-style: normal;
    font-weight: 400;
    => n4

    font-style: italic;
    font-weight: 500;
    => i5

A CSS class name for a single font

    wf-droidserif-n7

Describing an entire family of fonts. Here each variation is delimited by a
comma.

    "Droid Serif:n4,i4,n7,i7"

    This string describes four fonts in the family 'Droid Serif':
    - Normal
    - Italic
    - Bold
    - Bold Italic

## Copyright and License

Copyright (c) 2010 Adobe Systems Incorporated.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

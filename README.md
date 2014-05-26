# boxmodel-rails

Provides a pack of css utility classes to set paddings, margins and borders without writting css code

## Installation

Add this line to your application's Gemfile:

    gem 'boxmodel-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install boxmodel-rails

----

## Usage

#### Configuration

In you CSS manifest file add the following line:

```scss
$step:      1;
$minValue:  -10;
$maxValue:  10;
@import 'boxmodel';
```
You can also generate classes only for specific values. To do so, define a list of values like this:
 
```scss
$values:    -5,1,2,3,10,40;
@import 'boxmodel';
```
If you set the `$values` to something else than `null`, variables `$step`, `$minValues` and `$maxValue` are not taken into account.

Variables:

 - `step` - defines the step by which the classes will be generated, e.g. 5 will generate *-5 *-10 etc.
 - `minValue` - defines the minimum value that will be generated.
 - `maxValue` - defines the maximum value that will be generated.
 - `values` - defines a list of specific values that will be generated. It's `null` by default. 

#### Types of classes

The gem creates four types of classes:

 1. disabling classes - e.g. `.n-m`, `.n-p`
 2. one way classes - e.g. `.m-l-5`, `p-b-5`
 3. two way classes - e.g. `.m-v-5`, `.p-h-5`
 4. four way classes - e.g. `m-5`, `p-5`

#### Naming conventions

The naming conventions for this shortcuts are as follows:

 - n - no (disabling)
 - m - margin
 - p - padding
 - b - border
 - l - left
 - r - right
 - t - top
 - b - bottom
 - v - vertical
 - h - horizontal

So for example:

 - `.m-5` - `margin: 5px;`
 - `.m-b-10` - `margin-bottom: 10px;`
 - `.m-l--7` - `margin-left: -7px;`
 - `.m-v-10` - `margin-top: 10px; margin-bottom: 10px;`

----

## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create new Pull Request.

# Rclid

The name **Rclid** stands for **Rapid Command Line Interface Development** and
is pronounced the way you like.

As its name implies, the goal of this gem is to provide you with a light
structure to create command line interfaces like a breeze.

Focusing on rapid development, creating basic single command line application
or a more complex one using composite sub commands is achieve in light speed.

If you have ideas that would reduce even more development time and could
be that this library, come discuss it with me by creating an issue on
github.com.

## Installation

Install it via [rubygems](https://rubygems.org/gems/rclid)

    $ gem install rclid

## Usage

**Rclid** is really to get started with. The simplest command line
application is like the following (file `hello`):

```ruby
#!/usr/bin/env
require 'rclid/base'

class Hello < Rclid::Base
  def execute()
    puts "Hello, World!"
  end
end

Hello.new().run()
```

This will create a command line application that will print `Hello, World!`
in the console when `hello` is called.

Until I improve this section, there is different locations where
you can check for samples that use **Rclid**

 * The samples directory contains some samples ruby files that
   use **Rclid**. They are commented at different locations to
   explain the features that you can use.

 * [Buildozer](https://github.com/maoueh/buildozer) is using **Rclid** for its
   command line interface. Check
   [here](https://github.com/maoueh/buildozer/blob/master/lib/buildozer/cli/root.rb).

 * [Clivers](https://github.com/maoueh/clivers) is using **Rclid** for its
   command line interface. Check
   [here](https://github.com/maoueh/clivers/blob/master/lib/clivers/cli/root.rb).

 * My [personal bin](https://github.com/maoueh/personalbin) is on github. I use **Rclid**
   for each command I create.

## Contributing

1. Fork it

2. Create either a fix branch or a feature branch
 * `git checkout -b fix-(name-here)`
 * `git checkout -b feature-(name-here)`

3. Commit your changes
 * `git commit -am 'Message describing the fix or feature'`

4. Push the branch into your repo
 * `git push origin feature-(name-here)`

5. Create new Pull Request

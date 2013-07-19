#!/usr/bin/env ruby

require 'rclid/composite'

require_relative 'hello'
require_relative 'world'

# You extend Rclid::Composite to create a composite command
class Root < Rclid::Composite
  def name()
    # Usually, it would be your application name
    # (like `clivers` or `nugrant` for example).
    "composite"
  end

  def subcommands()
    # Return the hash symbol -> Class that
    # represents the sub commands that can
    # be called from this composite. This is
    # required.
    {
      :hello => Hello,
      :world => World,
    }
  end

  def options(parser)
    super(parser)
    parser.on_tail("-v", "--version", "Show version") do
      version()
    end
  end

  def version()
    # Usually, it would be your application version
    puts "Composite #{Rclid::VERSION}"
    exit(0)
  end
end

# Only the root needs to be run
# So this lines must not be added
# to the subcommands
Root.new().run()

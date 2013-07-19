#!/usr/bin/env ruby

require 'rclid/base'

class Hello < Rclid::Base
  def execute()
    name = @arguments[0] || "World!"

    puts "Hello, #{name}"
  end
end

Hello.new().run()

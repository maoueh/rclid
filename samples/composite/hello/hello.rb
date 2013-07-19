require 'rclid/base'

class Hello < Rclid::Base
  def execute()
    puts "Hello, Subcommand!"
  end
end

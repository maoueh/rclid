require 'rclid/base'

class World < Rclid::Base
  def execute()
    name = @arguments[0] || "World!"

    puts "Hello, #{name}!"
  end
end

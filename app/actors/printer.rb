class Printer
  include Celluloid
  include Celluloid::Notifications

  def initialize(name)
    @name = name
    puts 'starting'
    subscribe('printing', :print)
  end

  def print(channel, message)
    puts "#{@name} is printing #{message}"
  end
end
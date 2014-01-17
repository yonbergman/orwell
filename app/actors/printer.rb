class Printer
  include Celluloid
  include Celluloid::Notifications
  include Celluloid::Logger

  def initialize(name)
    @name = name
    info "starting"
    subscribe('printing', :print)
  end

  def print(channel, message)
    info "#{@name} is printing #{message}"
  end
end
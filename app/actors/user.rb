class User
  include Celluloid
  include Celluloid::Notifications

  def initialize(delay)
    @delay = delay
    async.run
  end

  def run
  	every(@delay) { publish 'printing', "Message" }
  end
end
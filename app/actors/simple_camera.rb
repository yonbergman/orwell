class SimpleCamera
  include Celluloid
  include Celluloid::Notifications
  include Celluloid::Logger

  def initialize
      async.run
  end

  def run
    while true
      `raspistill -w 640 -h 480 -q 5 -o tmpframe.png -tl 100 -t 9999999 -th 0:0:0 -n`
    end
  end
end

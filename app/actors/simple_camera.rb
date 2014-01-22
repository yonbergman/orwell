class SimpleCamera
  include Celluloid
  include Celluloid::Notifications
  include Celluloid::Logger

  def initialize
    async.run
  end

  def run
    every(1) do
      begin
        `raspistill -t 1 -vs -o tmpframe.png`
      rescue Exception
        error 'could not capture image'
      end
		end
  end

end


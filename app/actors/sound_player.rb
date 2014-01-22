class SoundPlayer
  QUEUE = 'play-sound'
  include Celluloid
  include Celluloid::Notifications

  def initialize
    subscribe(QUEUE, :play)
  end

  def play(what, url)
    `mpg123 #{url}`
  end
end
module Resources
  class Ding < Lattice::Resource
  	include Celluloid::Notifications
    include Webmachine::ActionView::Resource

    def to_html
	    publish SoundPlayer::QUEUE, 'http://soundjax.com/reddo/56895^DING.mp3'
      render 'resources/redirect'
    end
  end
end

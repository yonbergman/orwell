module Resources
  class Door < Lattice::Resource
  	include Celluloid::Notifications
    include Webmachine::ActionView::Resource

    def to_html
	    publish DoorOpener::QUEUE
      render 'resources/redirect'
    end
  end
end

module Resources
  class Home < Lattice::Resource
  	include Webmachine::ActionView::Resource

    def to_html
	  @messages = MESSAGES.dup
	  MESSAGES.clear
      render
    end
  end

end

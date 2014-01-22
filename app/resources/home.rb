module Resources
  class Home < Lattice::Resource
  	include Webmachine::ActionView::Resource

    def to_html
      render
    end
  end

end

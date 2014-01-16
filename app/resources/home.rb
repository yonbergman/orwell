module Resources
  class Home < Lattice::Resource
  	include Webmachine::ActionView::Resource

    def to_html
      # render template: 'resources/hello.erb', layout: 'layouts/application.erb'
      render
    end
  end

end

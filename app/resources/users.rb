module Resources
  class Users < Lattice::Resource
  	include Webmachine::ActionView::Resource

    def to_html
	  @users = User.all
      render
    end
  end

end

module Resources
  class Ping < Lattice::Resource
  	include Celluloid::Notifications
    def to_html
	  publish 'printing', "Ping" 
      response.redirect_to '/'
      3
    end
  end
end

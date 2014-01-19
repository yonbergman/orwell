module Resources
  class Ping < Lattice::Resource
  	include Celluloid::Notifications
    def to_html
	  publish 'printing', "Ping" 
	  publish 'door'
      # response.redirect_to '/'
      # 3
      "Hey"
    end
  end
end

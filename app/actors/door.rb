require 'httparty'

class Door
  include Celluloid
  include Celluloid::Notifications
  include Celluloid::Logger

  def initialize(addr)
  	@url = "http://#{addr}/door"
  	info "DOOR listening on #{@url}"
    subscribe('door', :open_door)
  end

  def open_door(request)
  	info "request open door"
  	HTTParty.get(@url)
  end

end
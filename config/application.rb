require File.expand_path("../boot", __FILE__)
require File.expand_path("../actors", __FILE__)

# Require your resources here
require 'resources/home'
require 'resources/ping'
require 'resources/users'

module Orwell
	Webmachine.application.configure do |config|
  		config.ip = '0.0.0.0'
  #config.port = 3000
  #config.adapter = :Mongrel
	end
  Application = Lattice::Application.new do |app|
    app.routes do
	  add ['users', '*'], Resources::Users
      add ['ping'], Resources::Ping
      add ['*'], Resources::Home
    end
  end
end

Lattice.app = Orwell::Application

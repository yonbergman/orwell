require File.expand_path("../boot", __FILE__)
require File.expand_path("../actors", __FILE__)

# Require your resources here
require 'resources/home'
require 'resources/ping'
require 'resources/users'
require 'resources/cam'

module Orwell
  Application = Lattice::Application.new do |app|
    app.routes do
	  add ['users', '*'], Resources::Users
      add ['ping'], Resources::Ping
      add ['cam'], Resources::Cam
      add ['*'], Resources::Home
    end
  end
end

Lattice.app = Orwell::Application

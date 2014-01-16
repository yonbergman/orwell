require File.expand_path("../boot", __FILE__)
require File.expand_path("../actors", __FILE__)

# Require your resources here
require 'resources/home'
require 'resources/ping'

module Orwell
  Application = Lattice::Application.new do |app|
    app.routes do
      add ['ping'], Resources::Ping
      add ['*'], Resources::Home
    end
  end
end

Lattice.app = Orwell::Application

require File.expand_path("../boot", __FILE__)
require File.expand_path("../actors", __FILE__)

module Orwell
  Application = Lattice::Application.new do |app|
    app.routes do
	    add ['users', '*'], Resources::Users
      add ['door'], Resources::Door
      add ['ding'], Resources::Ding
      add ['cam'], Resources::Cam
      add ['*'], Resources::Home
    end
  end
end

Lattice.app = Orwell::Application

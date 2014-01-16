require 'celluloid/autostart'
require File.expand_path("../../app/actors/printer", __FILE__)
require File.expand_path("../../app/actors/user", __FILE__)


p = Printer.new "IRIS"
u = User.new 2

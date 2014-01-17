require 'celluloid/autostart'
require File.expand_path("../../app/actors/printer", __FILE__)
require File.expand_path("../../app/actors/pinger", __FILE__)
require File.expand_path("../../app/models/user", __FILE__)
require File.expand_path("../../app/models/song", __FILE__)

MESSAGES = []
p = Printer.new "IRIS"
u = Pinger.new 2

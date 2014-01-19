require 'celluloid/autostart'
require 'opencv'
require File.expand_path("../../app/actors/printer", __FILE__)
require File.expand_path("../../app/actors/pinger", __FILE__)
require File.expand_path("../../app/actors/door", __FILE__)
require File.expand_path("../../app/actors/face_detection", __FILE__)

require File.expand_path("../../app/models/user", __FILE__)
require File.expand_path("../../app/models/song", __FILE__)

MESSAGES = []
p = Printer.new "IRIS"
u = Pinger.new 2
door = Door.new ENV['DOOR_ADDR']
face = FaceDetection.new ::OpenCV::CvCapture::open

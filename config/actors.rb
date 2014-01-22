require 'celluloid/autostart'
require 'opencv'

door = DoorOpener.new ENV['DOOR_ADDR']
face = FaceDetection.new ::OpenCV::CvCapture::open
sound_player = SoundPlayer.new

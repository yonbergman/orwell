require 'celluloid/autostart'
require 'opencv'

door = DoorOpener.new ENV['DOOR_ADDR']
begin
face = FaceDetection.new ::OpenCV::CvCapture::open
rescue Exception
  puts "Couldn't start face detection"
  simple_camera = SimpleCamera.new
end
sound_player = SoundPlayer.new

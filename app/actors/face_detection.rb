class FaceDetection
  include Celluloid
  include Celluloid::Notifications
  include Celluloid::Logger

  def initialize(capture)
  	@capture = capture
  	@detector = ::OpenCV::CvHaarClassifierCascade::load("#{ENV['OPENCV_DIR']}/haarcascades/haarcascade_frontalface_alt.xml")
  	async.run
  end

  def run
  	begin
		every(0.5) do
			require "opencv" unless defined? ::OpenCV
			@capture = ::OpenCV::CvCapture::open unless @capture
			frame = @capture.query 
			@detector.detect_objects(frame).each do |rect|
   				frame.rectangle! rect.top_left, rect.bottom_right, :color => ::OpenCV::CvColor::Red
   			end
			frame.save('tmpframe.png')
		end
	rescue Exception => e
		error e.message
	end	
  end

end


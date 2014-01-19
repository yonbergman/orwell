class FaceDetection
  include Celluloid
  include Celluloid::Notifications
  include Celluloid::Logger

  def initialize(capture)
  	@capture = capture
  	async.run
  end

  def run
  	begin
		every(1) do
			require "opencv" unless defined? ::OpenCV
			@capture = ::OpenCV::CvCapture::open unless @capture
			frame = @capture.query 
			frame.save('tmpframe.png')
		end
	rescue Exception => e
		error e.message
	end	
  end

end


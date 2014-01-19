module Resources
  class Cam < Lattice::Resource
    provide_content_type 'image/png' => :to_png
  	# include Celluloid::Notifications
    def to_png
      image = File.open('tmpframe.png')
    end
  end
end

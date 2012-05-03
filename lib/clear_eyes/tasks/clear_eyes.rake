require 'RMagick'

namespace :clear_eyes do
  desc 'convert @2x images to normal images'
  task :convert do
    r_images = Dir['app/assets/images/**/*@2x*']

    r_images.each do |r_image|
      img = Magick::ImageList.new(r_image)
      x1 = img.resize(0.5)
      x1.write r_image.delete "@2x"
    end

  end

end
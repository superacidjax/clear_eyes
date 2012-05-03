module ClearEyes
  module ViewHelpers

    def r_image( pixel_ratio )
      insert_on = -File.extname(@image).size-1
      image_tag(@image.insert(insert_on, "@#{pixel_ratio}x"), @options)
    end


    def r_image_tag(image, options = {})
      @devicePixelRatio = cookies[:devicePixelRatio]
      @options          = options
      @image            = image

      case @devicePixelRatio
        when '2'
          r_image 2
        when '1.5'
          r_image 2
        else
          image_tag(@image, @options)
       end
     end

  end
end
# Clear Eyes

This makes is super easy to handle Retina images in your Rails 3.1+ apps. It adds r_image_tag that can be used in place of the existing image_tag and it'll automatically serve up Retina images to devices that can handle the resolution and normal images otherwise.

## How to Use it

In your Gemfile:

    ```gem 'clear_eyes'``

In your application.js:

    ```//= require clear_eyes```

## Usage
    ```= r_image_tag('my_awesome_image@2x.jpg')```

This assumes that ```'my_awesome_image@2x.jpg'``` is sized properly for retina images. Remember, Retina images are double the pixel density of standard images.

Now that you have Retina-ready images and a way to serve them up in your views, what about non-retina machines?

There's a rake for that! You only need to create one image (the Retina one).

Running this: ```'rake clear_eyes:convert'``` will convert create non-retina images from the images in app/assets/images. It's even take care of the file names! Pretty cool right? So, my_awesome_image@2x.jpg will automatically be copied, downsized and named my_awesome_image.jpg.

You can thank me later.

## Contributing

Please contribute! The community is much smarter than me and your help would be appreciated!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

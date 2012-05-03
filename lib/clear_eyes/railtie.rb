require 'clear_eyes/view_helpers'


module ClearEyes
  class Railtie < Rails::Engine

    initializer "clear_eyes.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end

  end
end
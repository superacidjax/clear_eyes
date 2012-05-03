require "clear_eyes/version"

module ClearEyes
  module ClearEyes
  mattr_accessor :app_root

  def self.setup
    yield self
  end
end

require "clear_eyes/railtie"
require "batch-rails2/version"

module BatchRails2
  class Engine < ::Rails::Engine
  end

  mattr_accessor :prefix
  @@prefix = "batch-"

  def self.setup
    yield self
  end
end

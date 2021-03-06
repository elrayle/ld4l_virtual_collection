module Ld4lVirtualCollection
  class Engine < ::Rails::Engine
    isolate_namespace Ld4lVirtualCollection

    # Methods for configuring the GEM
    class << self
      attr_accessor :configuration
    end

    def self.configuration
      @configuration ||= Ld4lVirtualCollection::Configuration.new
    end

    def self.reset
      @configuration = Ld4lVirtualCollection::Configuration.new
    end

    def self.configure
      yield(configuration)
    end

  end
end

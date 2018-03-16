require 'active_support'
require 'active_support/core_ext'
require 'json'

module GoogleDirections
    def self.config
      Config.instance
    end

    def self.configure(&block)
      block.call(self.config)
    end

    autoload :Config  , __dir__+'/google_directions/config'
    autoload :Error   , __dir__+'/google_directions/error'
    autoload :Encoder , __dir__+'/google_directions/encoder'
    autoload :Request , __dir__+'/google_directions/request'
    autoload :Version , __dir__+'/google_directions/version'

end
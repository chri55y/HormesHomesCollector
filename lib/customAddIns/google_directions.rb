# $:.unshift File.expand_path('../lib/', __dir__)

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

    # autoload :Config  , 'google_directions/config'
    # autoload :Error   , 'google_directions/error'
    # autoload :Encoder , 'google_directions/encoder'
    # autoload :Request , 'google_directions/request'
    # autoload :Version , 'google_directions/version'

    autoload :Config  , __dir__+'/google_directions/config'
    autoload :Error   , 'google_directions/error'
    autoload :Encoder , 'google_directions/encoder'
    autoload :Request , 'google_directions/request'
    autoload :Version , 'google_directions/version'

end
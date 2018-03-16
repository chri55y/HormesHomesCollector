puts "/n  start file #{File.basename(__FILE__)}"

# autoload(GoogleDirections, '../../lib/customAddIns/google_directions.rb')
#

# r = Request.new


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

  autoload :Config  , '../../lib/customAddIns/google_directions/config'
  autoload :Error   , '../../lib/customAddIns/google_directions/error'
  autoload :Encoder , '../../lib/customAddIns/google_directions/encoder'
  autoload :Request , '../../lib/customAddIns/google_directions/request'
  autoload :Version , '../../lib/customAddIns/google_directions/version'

end



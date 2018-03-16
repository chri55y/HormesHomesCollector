puts "=> start file #{File.basename(__FILE__)}"

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

  # autoload :Config  , '../../lib/customAddIns/google_directions/config'
  # autoload :Config  , '../../lib/customAddIns/google_directions/config.rb'
  autoload :Config  , File.expand_path("../../lib/customAddIns/google_directions/config", __dir__)
  autoload :Error   , '../../lib/customAddIns/google_directions/error'
  autoload :Encoder , '../../lib/customAddIns/google_directions/encoder'
  autoload :Request , File.expand_path("../../lib/customAddIns/google_directions/request", __dir__)
                      #'../../lib/customAddIns/google_directions/request'
  autoload :Version , '../../lib/customAddIns/google_directions/version'

end

Rails.configuration.google = {:api_key => ENV['GOOGLE_MAPS_API_KEY']}

# puts "\tRails.configuration.google assigned :api_key => #{Rails.configuration.google[:api_key]}"


# puts "\taccessing files in #{File.expand_path("../../lib/customAddIns/google_directions/config", __dir__)}"
puts "\t> setting private key"
# GoogleDirections::Config.private_key=Rails.configuration.google[:api_key]
# ERROR => /Users/Chrissy/.rvm/gems/ruby-2.4.1/gems/activesupport-5.1.5/lib/active_support/dependencies.rb:292:in `require': cannot load such file -- ../../lib/customAddIns/google_directions/config (LoadError)
# failed solutions:
#     > adding .rb file extension => autoload :Config  , '../../lib/customAddIns/google_directions/config.rb'
# solution: use File.expand_path (line 27)
GoogleDirections.config.private_key=Rails.configuration.google[:api_key]
# NEW ERROR => /Users/Chrissy/develop/realestate/HormesHomesCollector/config/initializers/z01_initsANDfilestructures.rb:41:in `<top (required)>': undefined method `private_key=' for GoogleDirections::Config:Class (NoMethodError)
# solution: use .config.private_key, not class method ::Config.private_key


puts "\t> testing request"
req = GoogleDirections::Request.new
# ERROR => /Users/Chrissy/develop/realestate/HormesHomesCollector/config/initializers/z01_initsANDfilestructures.rb:54:in `<top (required)>': uninitialized constant GoogleDirections::Request (NameError)
# failed solutions:
#     > .new() instead of .new
#     > Request.new (removing GoogleDirections::)
# solution
#     + fix :Request file path (copied from config without changing file)
#     + add patron gem


puts "\n   end file #{File.basename(__FILE__)}\n"


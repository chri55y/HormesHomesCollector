puts "\n=> start file #{File.basename(__FILE__)}"

puts "\t> configuring zwsid"
# from https://github.com/synewaves/rubillow
Rubillow.configure do |configuration|
  configuration.zwsid = ENV['ZWSID']
end


puts "\n   end file #{File.basename(__FILE__)}\n"


puts "\n=> start file #{File.basename(__FILE__)}"

puts "\t> configuring zwsid"
# from https://github.com/synewaves/rubillow
Rubillow.configure do |configuration|
  configuration.zwsid = ENV['ZWSID']
end

puts "\t> make test API call"
test_property = Rubillow::HomeValuation.zestimate({ :zpid => '48749425' })
# puts ENV['ZWSID']
if test_property.success?
  puts "\t\tSuccess! price is $#{test_property.price}"
else
  puts "\t\tFAIL---------------------------"
  puts test_property.inspect
end

puts "\n   end file #{File.basename(__FILE__)}\n"


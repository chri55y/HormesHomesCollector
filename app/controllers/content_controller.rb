class ContentController < ApplicationController

  def home

    autoload :GoogleDirections, File.expand_path('../../lib/customAddIns/google_directions.rb',__dir__)

    @req = GoogleDirections::Request.new
    @test_params = { :origin      => "Disneyland" ,
                    :destination => "Universal Studios Hollywood"
    }
    @response = @req.get(@test_params)
    # puts @response.inspect

  end



end

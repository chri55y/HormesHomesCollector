# require '../../lib/google/directions.rb'


Rails.configuration.google_api = {
    :api_key => ENV['GOOGLE_MAPS_API_KEY']
}

# @gdir = GooDirections.configure()
# Google::Directions::Config.private_key = Rails.configuration.google_api[:api_key]
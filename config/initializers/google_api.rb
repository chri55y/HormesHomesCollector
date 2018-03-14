Rails.configuration.google_api = {
    :api_key => ENV['GOOGLE_MAPS_API_KEY']
}

Google::Directions::Config.private_key = Rails.configuration.google_api[:api_key]
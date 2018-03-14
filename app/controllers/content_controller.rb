require_relative './google/directions.rb'
require_relative './google/directions/config'

class ContentController < ApplicationController

  def home

    @gdir = Directions.config
  end

end

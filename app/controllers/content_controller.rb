class ContentController < ApplicationController

  def home

    @gdir = Directions.config
  end

end

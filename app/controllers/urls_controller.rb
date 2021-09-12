require 'date'

class UrlsController < ApplicationController

  def index
    @long_url = Long.new
  end

  def create
    @long_url = Long.new(long_url_params)
    puts @long_url
    # Check if address is already in DB


    render json: @long_url.address
  end

  def external
  end


  def long_url_params
    params.require(:long).permit(:address)
  end

end

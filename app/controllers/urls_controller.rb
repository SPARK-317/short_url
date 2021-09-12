require 'date'

class UrlsController < ApplicationController

  def index
    @long_url = Long.new
  end

  def create
    @long_url = Long.new(long_url_params)
    
    # Check if address is already in DB
    existing_address = Long.find_by_address(@long_url.address)

    # if already in DB, then hash new short and link to existing
    if !existing_address.nil? 
      hashed_address = hash(existing_address.address)
      @short_url = Short.new(address: hashed_address, long_id: existing_address.id)
      @short_url.save
      render json: @short_url.address
    
    # else try to validation and make new long in DB
    else 
      # if the long is valid, generate short
      if @long_url.save
        hashed_address = hash(@long_url.address)
        @short_url = Short.new(address: hashed_address, long_id: @long_url.id)
        @short_url.save
        render json: @short_url.address

      # otherwise raise error
      else
        render json: "INVALID URL"
      end
    end
  end

  def hash(address) # returns a hexidecimal
    time = Time.now.to_i.to_s.split("").last(5).join.to_i
    ascii_address = address.bytes.sum
    return ((time*ascii_address).to_s(16))
  end


  def external
  end


  def long_url_params
    params.require(:long).permit(:address)
  end

end

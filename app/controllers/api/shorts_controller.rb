class Api::ShortsController < ActionController::API 
  def index
    @short_urls = Short.order(count: :desc).first(100)
  end
end
class Api::ShortsController < ActionController::API 
  def shorts
    @short_urls = Short.order(count: :desc).first(100)
  end

  def longs
    @long_urls = Long.order(count: :desc).first(100)
  end
end
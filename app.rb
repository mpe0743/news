require "sinatra"
require "sinatra/reloader"
require "geocoder"
require "forecast_io"
require "httparty"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }                                     

# enter your Dark Sky API key here
ForecastIO.api_key = "6ad76b3c7066f4df2c367d3dfe11ffa8"


get "/" do
    view "ask"
end

get "/news" do
  view "news"
 # Read the news for @city 
  #url = "https://newsapi.org/v2/top-headlines?q=<%=params["q"] %>&apiKey=b137492ad1b645a0aea1cab9c6055b55"
  #news = HTTParty.get(@url).parsed_response.to_hash
end
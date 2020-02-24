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
  # do everything else
end
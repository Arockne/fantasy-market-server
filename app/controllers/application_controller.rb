class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/shops' do
    shops = Shop.all
    shops.to_json
  end

end

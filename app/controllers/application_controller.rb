class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/shops' do
    shops = Shop.all
    shops.to_json
  end

  get '/shops/items' do
    shops = Shop.all
    shops.to_json(include: {
      items: { 
        only: [
          :id, 
          :name, 
          :desc, 
          :pounds, 
          :cost, 
          :category, 
          :created_at
        ]
      }
    })
  end

end

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/shops/:id' do
    shop = Shop.find(params[:id])
    shop.to_json
  end

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

  get '/items/:id' do
    item = Item.find(params[:id])
    item.to_json(only: [:id, :name, :desc, :pounds, :cost, :category, :created_at])
  end

  patch '/items/:id' do
    item = Item.find(params[:id])
    item.update(
      name: params[:name],
      desc: params[:desc],
      pounds: params[:pounds],
      cost: params[:cost],
      category: params[:category]
    )
    item.to_json(only: [:id, :name, :desc, :pounds, :cost, :category, :created_at])
  end

  delete '/items/:id' do
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end

end

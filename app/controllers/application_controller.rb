class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/shop/:id' do
    shop = Shop.find(params[:id])
    shop.to_json(include: {
      items: { 
        except: [:updated_at, :shop_id]
      }
    })
  end

  get '/shops' do
    shops = Shop.all
    shops.to_json
  end

  get '/shops/items' do
    shops = Shop.all
    shops.to_json(include: {
      items: { 
        except: [:updated_at]
      }
    })
  end

  get '/items/:id' do
    item = Item.find(params[:id])
    item.to_json(except: :updated_at,
    include: :shop)
  end

  patch '/items/:id' do
    item = Item.find(params[:id])
    item.update_with_params(params)
    item.to_json(except: :updated_at)
  end

  post '/items' do
    item = Item.create(params)
    item.to_json(except: :updated_at)
  end

  delete '/items/:id' do
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end

end

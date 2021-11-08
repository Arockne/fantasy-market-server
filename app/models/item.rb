class Item < ActiveRecord::Base
  belongs_to :shop

  def update_with_params(params)
    self.update(
      name: params[:name],
      desc: params[:desc],
      pounds: params[:pounds],
      cost: params[:cost],
      category: params[:category],
      shop_id: params[:shop_id]
    )
  end

end
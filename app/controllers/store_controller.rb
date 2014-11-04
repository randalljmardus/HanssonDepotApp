class StoreController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart
  
  def index
  	@products = Product.order(:title)
  end

    def tick
  	@time = Time.now
  end

  def tock
  	@date = Date.now
  end
end

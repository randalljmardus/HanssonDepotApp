class StoreController < ApplicationController
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

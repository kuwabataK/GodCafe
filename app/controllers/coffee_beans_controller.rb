class CoffeeBeansController < ApplicationController

  def index
    @coffeebeans = CoffeeBean.all
  end
end

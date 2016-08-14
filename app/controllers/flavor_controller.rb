class FlavorController < ApplicationController

  def index
    @flavors = Flavor.all
  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.new
    @flavor.sourness = params[:flavor][:sourness]
    @flavor.body = params[:flavor][:body]
    @flavor.bitterness = params[:flavor][:bitterness]

    if @flavor.save
      redirect_to flavor_cal_brend_path, notice: "登録しました"
    else
      render 'new'
    end
  end

 def edit
 end

 def cal_brend
    @flavor = Flavor.new
    @flavor.sourness = params[:flavor][:sourness]
    @flavor.body = params[:flavor][:body]
    @flavor.bitterness = params[:flavor][:bitterness]
    @blend_val = Flavor.calc_brend(@flavor)
 end

end

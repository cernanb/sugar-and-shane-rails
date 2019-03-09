class BrandsController < ApplicationController
  def index
    @brands = Brand.all
    respond_to do |f|
      f.html
      f.json { render json: @brands }
    end
  end

  def new
  end

  def create
  end
end

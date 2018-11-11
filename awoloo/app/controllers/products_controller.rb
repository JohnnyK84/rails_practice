class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    def show
        @product = Product.find(params[:id])
    end

    def new
    end

    def create
        @product = Product.new(product_params)

        @product.save
        redirect_to @product
        #render plain: params[:product].inspect -use this command to view parameter data
    end

    private
  def product_params
    params.require(:product).permit(:title, :subtitle, :description)
  end

end

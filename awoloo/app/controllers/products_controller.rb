class ProductsController < ApplicationController
    #display all products in database
    def index
        @products = Product.all
    end
    #show selected product in database
    def show
        @product = Product.find(params[:id])
    end
    #to add new product in database
    def new
        @product = Product.new
    end
    #to edit product in database
    def edit
        @product = Product.find(params[:id])
    end
    #to create new product in database with required product_params
    def create
        @product = Product.new(product_params)

        #if statement to check validation of model (min title >= 5)
        if @product.save
            redirect_to @product
        else
            render 'new'
        end

        #render plain: params[:product].inspect -use this command to view parameter data
    end
    #method to update selected product by id
    def update
        @product = Product.find(params[:id])

        if @product.update(product_params)
            redirect_to @product
        else
            render 'edit'
        end
    end
    #method to delete resources
    def destroy
        @product = Product.find(params[:id])
        @product.destroy

        redirect_to products_path
    end
    private
  def product_params
    params.require(:product).permit(:title, :subtitle, :description)
  end

end

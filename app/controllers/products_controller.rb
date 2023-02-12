class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    begin
      @product = Product.find(params[:id])
    rescue
      redirect_to notfound_path
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :description, :price, :picture))
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name, :description, :price, :picture))
      redirect_to products_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path
    end
  end

end

class Cms::ProductsController < Cms::BaseController
  layout 'cms'
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to cms_products_path, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    clean_params = product_params
    new_avatars = clean_params.delete(:avatars)

    if params[:remove_avatars].present?
      params[:remove_avatars].each do |avatar_id|
        @product.avatars.find(avatar_id).purge
      end
    end

    if @product.update(clean_params)
      @product.avatars.attach(new_avatars) if new_avatars && new_avatars.reject(&:blank?).present?
      redirect_to cms_products_path, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to cms_products_path, notice: 'Product was successfully destroyed.'
  end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :category_id, avatars: [])
  end
end

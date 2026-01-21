class Cms::BannersController < Cms::BaseController
  layout 'cms'
  before_action :set_banner, only: %i[show edit update destroy]

  def index
    @banners = Banner.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new(banner_params)
    if @banner.save
      redirect_to cms_banners_path, notice: 'Banner was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @banner.update(banner_params)
      redirect_to cms_banners_path, notice: 'Banner was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @banner.destroy
    redirect_to cms_banners_path, notice: 'Banner was successfully destroyed.'
  end

  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.require(:banner).permit(:name, :description, :category_id, avatars: [])
  end
end

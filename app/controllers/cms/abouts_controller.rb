class Cms::AboutsController < Cms::BaseController
  layout 'cms'
  before_action :set_about, only: %i[show edit update destroy]

  def index
    @abouts = About.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(about_params)
    if @about.save
      redirect_to cms_abouts_path, notice: 'About was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @about.update(about_params)
      redirect_to cms_abouts_path, notice: 'About was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @about.destroy
    redirect_to cms_abouts_path, notice: 'About was successfully destroyed.'
  end

  private

  def set_about
    @about = About.find(params[:id])
  end

  def about_params
    params.require(:about).permit(:name, :description, :short_content, :content, :active)
  end
end

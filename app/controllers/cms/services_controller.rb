class Cms::ServicesController < Cms::BaseController
  layout 'cms'
  before_action :set_service, only: %i[show edit update destroy]

  def index
    @services = Service.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to cms_services_path, notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to cms_services_path, notice: 'Service was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to cms_services_path, notice: 'Service was successfully destroyed.'
  end

  private

  def set_service
    @service = Service.friendly.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :avatar, :content, :active)
  end
end

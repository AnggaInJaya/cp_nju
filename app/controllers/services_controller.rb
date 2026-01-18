class ServicesController < ApplicationController
  # layout 'portofolio_layout'
  def index
    @services = Service.all
  end
end

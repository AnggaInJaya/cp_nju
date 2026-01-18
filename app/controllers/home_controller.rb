class HomeController < ApplicationController
  # layout 'novena_layout'

  def index
    @about = About.where(active: true).first
    @products = Product.all.sample(10)
  end
end

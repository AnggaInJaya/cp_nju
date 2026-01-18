class AboutsController < ApplicationController
  def index
    # @about = About.first
    @about = Tentang.first
  end
end

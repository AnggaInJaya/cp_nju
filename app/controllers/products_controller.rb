# frozen_string_literal: true

class ProductsController < ApplicationController # rubocop:disable Style/Documentation
  before_action :set_product, only: %i[show]
  before_action :set_wa_title, only: %i[show]

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).includes(photos_attachments: :blob).page(params[:page]).per(15)
  end

  def show; end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to products_path, alert: 'Product not found.'
  end

  def set_wa_title
    @wa_title = url_encode("#{@contact.wa_title} #{@product.name}")
  end
end

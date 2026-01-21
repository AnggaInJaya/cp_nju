
# frozen_string_literal: true
require 'erb'
include ERB::Util # Makes 'url_encode' and 'u' methods available without the module prefix

class ApplicationController < ActionController::Base
  before_action :set_wa_number
  before_action :default_meta_tags
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def set_wa_number
    @contact = Contact.where(active: true).first
    @wa_title = url_encode(@contact.wa_title)
  end

  def default_meta_tags
    set_meta_tags site: 'Novena Jaya Utama',
                  reverse: true,
                  separator: "|",
                  title: 'Novena Jaya Utama - Produsen tekstil laminating terkemuka di Bandung',
                  description: 'Jasa laminating kain Bandung berkualitas tinggi untuk fashion dan industri tekstil, Produsen tekstil laminating terkemuka di Bandung, fokus pada kualitas dan kemitraan jangka panjang.',
                  keywords: 'Novena Jaya Utama, tekstil laminating, Bandung, kualitas, kemitraan, jangka panjang',
                  author: 'Novena Jaya Utama',
                  publisher: 'Novena Jaya Utama',
                  image: 'https://www.novenajayautama.co.id/assets/logo.png',
                  og: {
                    title: 'Novena Jaya Utama - Produsen tekstil laminating terkemuka di Bandung',
                    description: 'Produsen tekstil laminating terkemuka di Bandung, fokus pada kualitas dan kemitraan jangka panjang.',
                    type: 'website',
                    site_name: 'Novena Jaya Utama',
                    image: 'https://www.novenajayautama.co.id/assets/logo.png'
                  },
                  twitter: {
                    card: 'summary_large_image',
                    title: 'Novena Jaya Utama - Produsen tekstil laminating terkemuka di Bandung',
                    description: 'Produsen tekstil laminating terkemuka di Bandung, fokus pada kualitas dan kemitraan jangka panjang.',
                    image: 'https://www.novenajayautama.co.id/assets/logo.png'
                  }
  end
end

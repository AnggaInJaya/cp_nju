
# frozen_string_literal: true
require 'erb'
include ERB::Util # Makes 'url_encode' and 'u' methods available without the module prefix

class ApplicationController < ActionController::Base
  before_action :set_wa_number

  private

  def set_wa_number
    @contact = Contact.where(active: true).first
    @wa_title = url_encode(@contact.wa_title)
  end
end

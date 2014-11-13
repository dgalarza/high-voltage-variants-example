class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_variant

  private

  def set_variant
    if browser.mobile?
      request.variant = :mobile
    elsif browser.tablet?
      request.variant = :tablet
    end
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :redirect_own_domain
  def redirect_own_domain
    redirect_to "https://takaku-lab.webcat.jp#{request.path}", status: :moved_permanently
  end
end

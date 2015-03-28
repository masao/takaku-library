class ApplicationController < ActionController::Base
  enju_leaf
  enju_biblio
  enju_library
  enju_subject
  enju_circulation
  enju_event

  mobylette_config do |config|
    config[:skip_xhr_requests] = false
    config[:skip_user_agents] = Setting.enju.skip_mobile_agents.map{|a| a.to_sym}
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

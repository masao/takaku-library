class ApplicationController < ActionController::Base
  #enju_leaf
  #enju_biblio
  #enju_library
  #enju_subject
  #enju_circulation
  #enju_event
  #mobylette_config do |config|
  #  config[:skip_xhr_requests] = false
  #  config[:skip_user_agents] = ENV['ENJU_SKIP_MOBILE_AGENTS'].to_s.split(',').map{|a| a.to_sym }
  #end
  include EnjuLibrary::Controller
  include EnjuBiblio::Controller
  include EnjuCirculation::Controller
  include EnjuEvent::Controller
  include EnjuSubject::Controller
  include Pundit
  before_action :set_paper_trail_whodunnit
  after_action :verify_authorized, unless: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

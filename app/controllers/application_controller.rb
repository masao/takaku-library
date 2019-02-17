class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  redirect_to "https://takaku-lab.webcat.jp/#{request.path}", status: :moved_permanently
end

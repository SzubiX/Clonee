class ApplicationController < ActionController::Base
  before_filter :authentitace_user!
  protect_from_forgery with: :exception
end

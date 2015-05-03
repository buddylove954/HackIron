require 'kairos'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  $CLIENT = Kairos::Client.new(:app_id => '332825ff', :app_key => 'ee01180df7b7a10f05305e39e9adb565')
end

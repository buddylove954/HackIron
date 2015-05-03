class CallbacksController < ApplicationController

	def home
		# @graph = Koala::Facebook::API.new()
		# profile = @graph.get_object("me")
		render(:home)
	end
	def callback
		@graph = Koala::Facebook::API.new(params[:token])
		profile = @graph.get_object("me")
		puts profile
		render json: @user
	end

	def facebook
      @user = User.from_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user
  end

end

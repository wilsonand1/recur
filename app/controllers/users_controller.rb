class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
		@weight = current_user.weights.build
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in(@user)
			redirect_to @user
		else
			render 'new'
		end
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end
end

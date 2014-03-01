class OptionController < ApplicationController

	def update
		current_user.option.update_attributes(option_params)
		redirect_to edit_user_path(current_user)
	end

	private
	def option_params
		params.require(:option).permit(:weight)
	end

end

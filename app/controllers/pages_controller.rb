class PagesController < ApplicationController
before_action :authenticate_user!
	def index
		@bitacoras = current_user.bitacoras
	end

	def new
		@bitacora = Bitacora.new
	end

	def create 
		@bitacora = Bitacora.new(bitacora_params)
		@bitacora.user = current_user
	if @bitacora.save
		redirect_to bitacoras_path, notice: "bitacora was succesfully created."
	else
		render :new 
	end
end

private
 def bitacora_params
 	params.require(:bitacora).permit(:provincia, :fecha)
 end
	
end

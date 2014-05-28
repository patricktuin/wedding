class InviteesController < ApplicationController
	def new
	end

	def create
		#render :text => (params[:invitee])
		@invitee = Invitee.new(invitee_params)

		@invitee.save
		redirect_to @invitee
	end

	def show
		@invitee = Invitee.find(params[:id])
		@guests = @invitee.guests

	end

	def index
		@invitees = Invitee.all
	end

	def edit
	  @invitee = Invitee.find(params[:id])
	  #@invitee.guest.find(params[:invitee_id])
	end

	def update
	  @invitee = Invitee.find(params[:id])
	  @invitee.update(invitee_params)
	  redirect_to @invitee
	 end

	private
		def invitee_params
			params.require(:invitee).permit(:name, :option)
		end
end

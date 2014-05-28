class GuestsController < ApplicationController
  def create
    @invitee = Invitee.find(params[:invitee_id])
    @guest = @invitee.guests.create(guest_params)
    redirect_to invitee_path(@invitee)
  end

  def update
	@guest = Guests.find(params[:id])
	@invitee.guest.update(params[:guests].permit(:attend))
	#@guest.update
	redirect_to invitee_path
  end

 
  private
    def guest_params
      params.require(:guest).permit(:name, :attend)
    end
end

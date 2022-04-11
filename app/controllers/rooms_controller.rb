class RoomsController < ApplicationController
  def new
    @room = Room.new(room_params)
    if @rooms.save
        redirect_to root_path
     else
        render :new
    end
  end

  def create
    if @rooms.save
      redirect_to root_path
   else
      render :new
  end
end

private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
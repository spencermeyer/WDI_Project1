class MovesController < ApplicationController

  def create
    @game = Game.find(params[:game_id])
    @game.moves.create!(user_id: current_user.id, number: params[:number])
    redirect_to @game
  end
  
end

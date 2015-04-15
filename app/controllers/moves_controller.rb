class MovesController < ApplicationController

  def create
    @game = Game.find(params[:game_id])
    @move = @game.moves.new(user_id: params[:user_id], number: params[:number], value: params[:value])
    if @move.save
      redirect_to @game
    else
      redirect_to @game, notice: 'There was a problem.'  
    end
  end
  
end

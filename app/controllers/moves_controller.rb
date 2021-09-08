class MovesController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @game.move!(params[:row], params[:col])

    respond_to do |format|
      format.turbo_stream
      format.html {
        redirect_to @game
      }
    end
  end
end

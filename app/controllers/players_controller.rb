class PlayersController < ApplicationController
  # GET /players
  def index
    @players = Player.all
    
    respond_to do |format|
      format.json { render json: @players }
    end
  end
end

class GameSessionsController < ApplicationController
  before_action :set_game_session, only: [:show, :edit, :update, :destroy]

  # GET /game_sessions
  # GET /game_sessions.json
  def index
    @game_sessions = GameSession.all
  end

  # GET /game_sessions/1
  # GET /game_sessions/1.json
  def show
  end

  # GET /game_sessions/new
  def new
    @game_session = GameSession.new
  end

  # GET /game_sessions/1/edit
  def edit
  end

  # POST /game_sessions
  # POST /game_sessions.json
  def create
    @game_session = GameSession.new(game_session_params)

    respond_to do |format|
      if @game_session.save
        format.html { redirect_to @game_session, notice: 'Game session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_session }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_sessions/1
  # PATCH/PUT /game_sessions/1.json
  def update
    respond_to do |format|
      if @game_session.update(game_session_params)
        format.html { redirect_to @game_session, notice: 'Game session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_sessions/1
  # DELETE /game_sessions/1.json
  def destroy
    @game_session.destroy
    respond_to do |format|
      format.html { redirect_to game_sessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_session
      @game_session = GameSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_session_params
      params.require(:game_session).permit(:name)
    end
end

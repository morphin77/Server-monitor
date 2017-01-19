class RecourcesController < ApplicationController
  before_action :set_recource, only: [:show]

  # GET /recources
  # GET /recources.json
  def index
    @recources = Recource.all
  end

  # GET /recources/1
  # GET /recources/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recource
      @recource = Recource.find(params[:id])
    end
end

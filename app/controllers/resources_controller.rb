class ResourcesController < ApplicationController
  before_action :set_recource, only: [:show]

  def index
    @recources = Recource.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recource
      @recource = Recource.find(params[:id])
    end
end

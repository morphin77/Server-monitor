class DashboardsController < ApplicationController
	 before_action :set_dashboard, only: [:show, :edit, :update, :destroy]
   #before_action :set_dashboards_list, only: [:index, :show, :new, :edit]

  def index
    if user_signed_in?
      @dashboards = current_user.dashboards
    end     
  end

  def show
  	
  end

  def new
    @dashboard = Dashboard.new
    
  end

  def edit
  	
  end

  def create
    
    @dashboard = Dashboard.new(dashboard_params)
    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dashboard.update(dashboard_params)
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashboard }
      else
        format.html { render :edit }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dashboard.destroy
    respond_to do |format|
      format.html { redirect_to dashboards_url, notice: 'Dashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

    def set_dashboards_list
      @dashboards = current_user.dashboards
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashboard_params
      params.require(:dashboard).permit(:name, :description, :user_id)
end


end

class RodzicsController < ApplicationController
  def index
    @rodzic = current_rodzic
    @dzieci_all = Uczen.all
    @dzieci = Uczen.search(params[:search])
  end
  
  def new
    @rodzic = Rodzic.new
  end
  
  def create
    @rodzic = Rodzic.new(params[:rodzic])
    if @rodzic.save
      redirect_to rodzics_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @rodzic = Rodzic.find(params[:id])
  end
  
  def update
    @rodzic = Rodzic.find(params[:id])
    if @rodzic.update_attributes(params[:rodzic])
      redirect_to rodzics_path
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @rodzic = Rodzic.find(params[:id])
      @rodzic.destroy
      redirect_to rodzics_path
  end
end

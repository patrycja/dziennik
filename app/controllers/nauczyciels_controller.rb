class NauczycielsController < ApplicationController
  def index
    @nauczyciel = current_nauczyciel
    nauczyciels = Nauczyciel.find(:all)
    @nauczyciels = nauczyciels.paginate :page => params[:page], :per_page => 3
  end
  
  def new
    @nauczyciel = Nauczyciel.new
  end
  
  def create
    @nauczyciel = Nauczyciel.new(params[:nauczyciel])
    if @nauczyciel.save
      redirect_to nauczyciels_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @nauczyciel = Nauczyciel.find(params[:id])
  end
  
  def update
    @nauczyciel = Nauczyciel.find(params[:id])
    if @nauczyciel.update_attributes(params[:nauczyciel])
      redirect_to nauczyciels_path
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @nauczyciel = Nauczyciel.find(params[:id])
      @nauczyciel.destroy
      redirect_to nauczyciels_path
  end
end

class UczensController < ApplicationController
  def index
    @uczen = current_uczen
    @klasy_all = Klasa.all
    @klasy = Klasa.search(params[:search])
   #  @user = current_user
   #  users = Uczen.find(:all)
   #  @users = users.paginate :page => params[:page], :per_page => 3
  end
  
  def new
    @user = Uczen.new
  end
  
  def create
    @user = Uczen.new(params[:uczen])
    if @user.save
      redirect_to users_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = Uczen.find(params[:id])
  end
  
  def update
    @user = Uczen.find(params[:id])
    if @user.update_attributes(params[:uczen])
      redirect_to uczens_path
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @user = Uczen.find(params[:id])
      @user.destroy
      redirect_to uczens_path
  end
end

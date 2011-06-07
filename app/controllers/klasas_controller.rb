class KlasasController < ApplicationController
  
  def index
    if nauczyciel_signed_in?
 	    @klasy = Klasa.find(:all)
 	    #@uczniowie = Uczen.find(:all)
 	  elsif uczen_signed_in?
 	    @klasa = Klasa.where("id = ?", current_uczen.klasa_id)
    else
 	    redirect_to ocenas_path
    end
  end
  
  def show
    @klasa = Klasa.find(params[:id])
  end

   def new
     @klasa = Klasa.new
   end

   def create
     @klasa = Klasa.new(params[:klasa])
     if @klasa.save
       flash[:notice] = "Utworzono"
       redirect_to ocenas_path
     else
       flash[:error] = "Blad zapisu"
       redirect_to ocenas_path
     end  
   end
   
   def edit
     @klasa = Klasa.find(params[:id]) 
   end

    def update
      @klasa = Klasa.find(params[:car_id])
      if @klasa.update_attributes(params[:klasa])
        flash[:notice] = "zapisano"
         redirect_to :action => 'show', :id => @klasa
      else
         render :action => 'edit'
      end
    end
end

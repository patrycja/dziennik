class OcenasController < ApplicationController
  
  def index
 	  #@ocenas = Ocena.find(:all)
 	  if uczen_signed_in?
 	    @user = current_uczen
 	    @ocenas = current_uczen.ocenas
 	  elsif nauczyciel_signed_in?
 	    @user = current_nauczyciel
 	    @uczniowie = Uczen.find(:all)
 	    @ocenas = Ocena.find(:all)
 	  elsif rodzic_signed_in?
 	    @user = current_rodzic
 	    @dzieci = current_rodzic.uczens.all
    else
      render "index"
    end
  end

   def new
     @ocena = Uczen.find(params[:uczen_id]).ocenas.new
   end

   def create
     @user = Uczen.find(params[:uczen_id])
     @ocena = @user.ocenas.create(params[:ocena])
     if @ocena.save
       flash[:notice] = "Wystawiono"
       redirect_to :action => "show", :id => @uczen, :controller => "uczens"
     else
       flash[:error] = "Blad zapisu"
       redirect_to :action => "show", :id => @uczen, :controller => "uczens"
     end  
   end
   
   def edit
      @user = Uczen.find(params[:uczen_id])
      @ocena = @user.ocenas.find(params[:id])
    end

    def update
      @uczen = Uczen.find(params[:uczen_id])
      @ocena = @uczen.ocenas.find(params[:id])
      if @ocena.update_attributes(params[:ocena])
        flash[:notice] = "Zmieniono wpis"
         redirect_to :action => 'show', :id => @uczen, :controller => "uczens"
      else
         render :action => 'edit'
      end
    end
    
    def mychildren
      #kombinowac
      render 'costam'
      @user = current_rodzic
      @dziecko = Uczen.find(params[:uczen_email])
      @dziecko.update_attributes(:rodzic_id => current_rodzic.id)
    end
end

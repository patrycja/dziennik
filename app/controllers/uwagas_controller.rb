class UwagasController < ApplicationController
  def index
  	  #@uwagas = uwaga.find(:all)
  	  if uczen_signed_in?
  	    @uczen = current_uczen
  	    @uwagas = current_uczen.uwagas
  	  elsif nauczyciel_signed_in?
  	    @nauczyciel = current_nauczyciel
  	    @uwagas = Uwaga.find(:all)
  	  elsif rodzic_signed_in?
  	    @rodzic = current_rodzic
  	    @dzieci = current_rodzic.uczens
     else
       render "index"
     end
   end

    def new
      @uwaga = Uczen.find(params[:uczen_id]).uwagas.new
    end

    def create
      @uczen = Uczen.find(params[:uczen_id])
      @uwaga = @uczen.uwagas.create(params[:uwaga])
      if @uwaga.save
        flash[:notice] = "Wystawiono"
        redirect_to :action => "show", :id => @uczen, :controller => "uczens"
      else
        flash[:error] = "Blad zapisu"
        redirect_to :action => "show", :id => @uczen, :controller => "uczens"
      end  
    end

    def edit
       @uczen = Uczen.find(params[:uczen_id])
       @uwaga = @uczen.uwagas.find(params[:id])
     end

     def update
       @uczen = Uczen.find(params[:uczen_id])
       @uwaga = @uczen.uwagas.find(params[:id])
       if @uwaga.update_attributes(params[:uwaga])
         flash[:notice] = "Zmieniono wpis"
          redirect_to :action => 'show', :id => @uczen, :controller => "uczens"
       else
          render :action => 'edit'
       end
     end
end

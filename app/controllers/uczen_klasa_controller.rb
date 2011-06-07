class UczenKlasaController < ApplicationController
  
  def create
    @uczen = current_uczen
    @klasa = @uczen.uczen_klasas.build(:klasa_id => params[:klasa_id])
    if @klasa.save
      flash[:notice] = "Zapisano sie do klasy"
      redirect_to ocenas_path
    else
      flash[:error] = "Nie mozna zapisac"
      redirect_to ocenas_path
    end
  end
  
end

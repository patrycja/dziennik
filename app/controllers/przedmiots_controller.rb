class PrzedmiotsController < ApplicationController
  def index
    @nauczyciel = current_nauczyciel
    @przedmioty = @nauczyciel.przedmiots.all
  end
  
  def show
    @nauczyciel = current_nauczyciel
    @przedmiot = @nauczyciel.przedmiots.find(params[:id])
    @uczniowie = Uczen.all
   # @uczniowie = Uczen.where("klasa_id = ?", self.klasa_id)
  end
  
  def new
    @przedmiot = current_nauczyciel.przedmiots.new
  end
  
  def create
    @nauczyciel = current_nauczyciel
    @przedmiot = @nauczyciel.przedmiots.create(params[:przedmiot])
    if @przedmiot.save
      @przedmiot.update_attributes(:nauczyciel_id => @nauczyciel.id)
      flash[:notice] = "Zapisano"
      redirect_to przedmiots_path
    else
      flash[:error] = "Nie zapisano"
      redirect_to przedmiots_path
    end
  end
end

class RodzicUczenController < ApplicationController
  
  def create
    @rodzic = current_rodzic
    @dziecko = @rodzic.rodzic_uczens.build(:uczen_id => params[:uczen_id])
    if @dziecko.save
      flash[:notice] = "Dodano dziecko"
      redirect_to ocenas_path
    else
      flash[:error] = "Nie mozna dodac dziecka"
      redirect_to ocenas_path
    end
  end

  
end

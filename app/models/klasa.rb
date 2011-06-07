class Klasa < ActiveRecord::Base
  
  has_many :uczens, :through => :uczen_klasas
  
  def z_klasy
    uczniowie = Uczen.where("klasa_id = ?", self.klasa_id)
  end
end

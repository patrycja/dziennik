class UczenKlasa < ActiveRecord::Base
  attr_accessible :klasa
  
  belongs_to :uczen
  belongs_to :klasa
end

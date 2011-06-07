class Rodzic < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :imie, :nazwisko, :telefon
  
  has_many :rodzic_uczens
  has_many :uczens, :through => :rodzic_uczens
  
  def znajdz_dziecko(nazwisko)
    dzieci = Uczen.where("nazwisko = ?", nazwisko)
    if dzieci.empty?
      dzieci = Uczen.all
    end
    dzieci
  end
end

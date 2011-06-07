class Uczen < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :imie, :nazwisko, :data_urodzenia, :pesel, :klasa
  
  has_many :rodzics, :through => :rodzic_uczens
  has_many :uczen_klasas
  has_many :klasas, :through => :uczen_klasas
  has_many :ocenas
  has_many :uwagas
end

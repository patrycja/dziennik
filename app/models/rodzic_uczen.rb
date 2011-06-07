class RodzicUczen < ActiveRecord::Base
  belongs_to :rodzic
  belongs_to :uczen
end

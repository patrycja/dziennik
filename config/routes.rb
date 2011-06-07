Dziennik::Application.routes.draw do
  devise_for :rodzics
  devise_for :nauczyciels
  devise_for :uczens
  
  resources :rodzic_uczen
  resources :ocenas
  resources :uwagas
  resources :przedmiots
  resources :uczen_klasa

  resources :uczens do
    resources :rodzic_uczen
    resources :uczen_klasa
    resources :klasas
    resources :ocenas
    resources :uwagas
  end
  
  resources :nauczyciels do
    resources :przedmiots
    resources :klasas
    resources :uczen_klasa
    resources :uczens
  end
  
  resources :rodzics do
    resources :rodzic_uczen
    resources :uczens
  end
  
  resources :klasas do
    resources :uczen_klasa
    resources :uczens
  end
  
  
  root :to => "ocenas#index"
end

Candidatos::Application.routes.draw do
  resources :comentarios

  

  resources :users

  resources :candidatos do
   	resources :posts 		
  end		

  resources :posts do 
  	resources :comentarios
  end	

  resource :user_sessions

  root :to => "candidatos#index"
end

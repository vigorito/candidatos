Candidatos::Application.routes.draw do
  resources :comentarios

  resources :hashtags

  resources :users

  resources :candidatos do
   	resources :posts 		
  end		

  resources :posts do 
  	resources :comentarios
  end	

  resources :posts do 
    resources :hashtags
  end

  resource :user_sessions

  root :to => "candidatos#index"
end

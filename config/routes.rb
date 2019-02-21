Rails.application.routes.draw do
  root "departments#index"
  #resources :controller - creates routes for you via rails
   resources :departments do  
   resources :shoes
  end 
end

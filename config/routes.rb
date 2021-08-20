Rails.application.routes.draw do
  resources :parks

  get '/stateparks' => 'parks#state'
  get '/nationalparks' => 'parks#national'   
  
end

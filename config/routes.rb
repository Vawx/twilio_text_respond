Rails.application.routes.draw do
  root to: "frontend#index"
  resources :messages, :only => [:index, :new, :create, :show]
  get '/inbound_messages' => "inbound_messages#index"
end

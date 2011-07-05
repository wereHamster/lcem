Lcem::Application.routes.draw do
  get ':id', :to => 'meeting#show', :as => 'meeting'
  put ':id', :to => 'meeting#update', :as => 'meeting'

  post ':id/register', :to => 'meeting#register'
  get ':id/export.:format', :to => 'meeting#export'

  root :to => "session#index"
end

Lcem::Application.routes.draw do
  get ':id', :to => 'meeting#show', :as => 'meeting'
  get ':id/anmeldung', :to => 'meeting#anmeldung'

  post ':id/register', :to => 'meeting#register'
  get ':id/export.:format', :to => 'meeting#export'

  root :to => "session#index"
end

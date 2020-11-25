Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/kamigo/eat', to: 'kamigo#eat'
  get '/kamigo/response_headers', to: 'kamigo#response_headers'
  get '/kamigo/response_body', to: 'kamigo#show_response_body'
  get '/kamigo/sent_request', to: 'kamigo#sent_request'

end
